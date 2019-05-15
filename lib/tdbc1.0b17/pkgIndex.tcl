# Index file to load the TDBC package.

# Make sure that TDBC is running in a compatible version of Tcl, and
# that TclOO is available.

if {[catch {package present Tcl 8.5}]} {
    return
}
if {[catch {package present Tcl 8.6}]
    && [catch {package present TclOO 0.6}]} {
    return
}
package ifneeded tdbc 1.0b17 \
    "[list source [file join $dir tdbc.tcl]]\;\
    [list load [file join $dir tdbc10b17.dll] tdbc]"

