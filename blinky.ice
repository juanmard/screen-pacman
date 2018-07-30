{
  "version": "1.1",
  "package": {
    "name": "blinky",
    "version": "1.0",
    "description": "Blinky ghost for game.",
    "author": "Juan Manuel Rico",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22229.298%22%20height=%22219.519%22%20viewBox=%220%200%20214.967%20205.79905%22%3E%3Cg%20transform=%22translate(-7.232%20-5.269)%22%3E%3Cimage%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAH4AAAB/CAIAAACmHeF6AAAAAXNSR0IArs4c6QAAAARnQU1BAACx%20jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAABx/SURBVHhe7V3Li2/ZVc7/0ZkIzhw5kw6oOAok%20DkQQMhGUTBxkpOBAFLpBBfE18YEERSWoKD5C1EQSSYyah3kZbYx5293pazrJTfd91q3XdX2Ptfba%20+1e/6qpf1b11O9ZhsVnn2+usx3fWWedU3erkDQ+vjys6rqm/suOa+is7rqm/suOa+is7rqm/suOa%20+is7rqm/suOa+is7rqm/suOJo/74/t1NeXh4sCCSc+PHRw7zBBxPHPW33vTGkFeffuOrUrju//1f%203Hr6KZ5ipcFTsQWcp9h9WvYwCDw88HRcEgZHX/2CwzwBx5NJfdAKKmMtKgMkueSRW7GaeuOiGAqo%20nxDcy1CuqT/tAFOkCbyj06GIerEpEsV+x6Px04A4nwMieER4h66pP/XgYBHppIxK62JSnDaiHrR6%20F/wKr/shDzK4pv60A1NewikhIcXjNIQd7ZmOU48U4rQXbid57TX1px2cNiSLLRytGpSZenSxWIbi%20rqei7oZCG+K+Vgi3rqk/9RDF4B0U+x64i4mYfdp0XEpsiXqAGDJjK9b/X9Qf3719fOfWIg8P9o/v%20nITv7wdrm3L04lcXRHJe/PjmN5eIEuazgiEPj49dxiM4Hjn1t3/0+9SJbFV35YO/edetH/punzYJ%20dqDQOEStKlwTQ7t1IXAoGjXeFV56bHV7KX73ZiD6t95dHX/zZZfxCI7HRL1INE1vSupJShN9sSQF%20KaGT4mHMXRAkygAmv9RFcUd8Lf3gWm1JCrdxC/QdQX32lKSoxxarhZKv0y66kBTbxq42cIDNXqcQ%20XOJAwmGT9hL6sd4Dve6pj5pVqsvLgWOEoi1QUMYkAluiTDZlzHXF81pR3BHZDIr7VvkX0hy+/rue%20fYRiYqVi6oWoTipFWVlyzUGUZtmYK16BNnArA6+tWMetwmfowL8zZr2KiW4KvkJOoR6jFjZE8kJQ%20k4yHRHvCVVHGL/dyInsFwihrW0mxnIxA8u+tFug7gHo3o2Z6SFFfiOgDZeMd6B4MZKK4duuWdCex%20FsUNkQ3x4bYCyX7yQ5vXB/XHt28dv3Jzlb37+x/8uyhskaMXvrL/D3+9gCGX9f1+Wfjxq99eK6Jc%20yvf+pVF/5+1vQb/gGc8HNmb6u37HAwegGgo29ZrVqWd0DZAaLHkJ8Wx5O0egtA98PBBxVfdT0yNO%20jY8MvVX45Mq/qJgq0m7cEpd9geMyqdcjXI9t6KY+SSkZ1De+Yo1S6YFIGoeNqGmeHSjxYSmlqARl%20Ass/lVh7INvn5RUI9u20Aj1x1CMtZ++Ce9cDTINGPS0h2C3Khh+eAu99lwbEaVkUQ9StdUqhwfAz%20cKxT3Bao+albCOWJpB68jNqS+gK91QZOGUMRNdlcdQkoIFjGA/cpmUqZqZQycChYW6DEIT1Qw2Xp%20QE8m9eOpDEXUGxmlDuq7cayDMiFswFCEl7FkE7fSZ/q8FXghJYGc7Gc7/uTNej+Syg+sJfVunFKm%2012wai4I2WA2GslBWgUiNzbiGjtOGYy3pVPZA8i+kB5J9r0i7T2LXR/aVeijTrGcBer9tdr2kqPFr%20UJf4lkyWCjTs+y5viT3kllZTmYJdmi1xy4Bxp4qkXw31x7deiR80Vrl75+AjH4hEFzn68n9v+64/%20+OJ/HXzhuUXC+YJI4lN68SC5tO/6l28sESVb87l7Z2WAcq7v/XNTf+9nfjy+2Ngg4wHc+71fwcBp%203cH1KQ8c2Y/2wXf93oODvb0Dr3sH9x8c3N87ODw6Irgfp9ji7v29/cO7d7rz0oM1IvZcgYTXiPCu%207WUjD545B//5KQViRK4U5MPElE8YyObguU/TyahIfo7v3TFNZzh2oR6RwLvjxQMu6onHKQvm6oFD%20nfb4tUnYJPWjSOhBMUs1zhujUoN6BcqgDhRUKpAlAxlXMpxaurDZx5pbTz8V1Jv3jCjJVqAQL+rL%20iQPRz2Ognv3lsQjF1AcinDXHml3vOwGc9qKeZaCP7j+w4i5LkI8Cbwmox4VyW4HQxUJil/4VyN3d%208oGS1AuhE+dj6p0JgkoinwUJPczQ9XNFSuCRU6+nLOKV4oGDDOLUj2Gc1sCJUyBsvZB54KBmKSg1%20uwyPeTa+ul7+Swm3pDhPichAuAQ4FFMvhcZpQOoVaKSU+fhUW8ar60dFksfR9ZSM2ro+ehArGgFK%20fuHUI+l1dD0ajZM0u0xI1S+9DRw4h0L/6uLEc6uod18Dl5ntZTy22PUKWnG5uhWyA2yggaPLa6Xb%20x9H1ka5fMijvqep6Vlhdn69ZNZqJQIo16zlVLHHqLoPO1ULq6Rx+7AqBRDF1RsxA6u5AkEy7Cnhc%20S53JIJ8wYNeLWTY440ZKoB6ku0tq16/ZVpG8PZbXLMlFSDbaeM2qWu1W148ifZWpVyu1nmKpUCC5%20BRxfOOZXrrDWT61gU4h3jYMR8pJK4FJqi4oHzoibObRWmLKq12xVpJQeLfUHn/jnKGCRw88/t+27%20/jA+4b/8+UWObr0aVW3K8fHxgkiOj44WD5Jzf++//NLiQXK8d3+JKNmaz979xYPk4dE5/n5/x1nv%20B433PPQcOOwCr8Cj66NTPE+ytWM9POSXjE6922Z94rmrmeuhJGM15uG3byoQ+o4pSQ+WnWQmIzn4%201EcUCCFaIPhnIKwtEPJhoESQs3AgPPXKb39zdLbjAq9ZFinJ1ywfYdUJHLPeeTPRXA9EPYSpUyGe%20pXJFtVKA5/BJb8SDegZSGpWSqGcmuUUbUJ9+6EFrUUykBSpcFEM/IU/ZQzFHZzsuQH3VNmZ9NFqy%20TwNRj9SZn7sjfmqduh6iU5Wkjwp/WXIrcBsLz4ZN6p2G9aIeOKTeBOx6x+2B4J+BaleB1ri5W/Y4%20dUpYzdHZjl0HDgrz6zTW6nq90IznwGFHSKwX9dFZkFSmkhKHPW6JryWSfki9hkys9SoO6hME6dzC%20GtQrEP2MQIwLhTICMW7HJR23cShhb47Odlyk68ezXLMep6qW+KCefQFh9h44OlXLCDfFaSwZ1OdW%20GgT1ClSZSAH1DUld1KcfifyEfwYaA5BbxiUDZz4beNxFc3S2Y2fqoyTVGY1m6kV61R8yU8/uYK5t%201hPHAEHqUZKpIc6WRDeZeiIAXXDNesmIOwZOgXwIQD0DwVULJP8RSBErkOPWLVHoQf2oSAbm6GzH%20LtTj4ZXwQS7q43knyJVKUm9BtWhwDxwiItdKUo96RI22kprJD+zZ9Y7osW7qhSAlTRueauDQg6h3%20IMXVlv1TTHGeSmRfuirSqTk623Fu6s/7XX+08VEcsu17OTY+/Nzzm/L1V+4siORbN19dIkq2/l3N%20t76xRJRsy+fO/QdLRMm2fA6PHvXv6/UID8mBw6dbnxO0aV2PB1xPKwdL+8LhU+xOjB/R3/DWZ9/w%20lmexQp6hPPuHH/j31I1I3v3+jytQSwYSLGvC+NsmFX/hqEmZiZo6WFYOTCaQ0JHVZ758I2P16M+0%20fLjrhJ+5fe+BaTrDsdOsZ1VeqST1iRhvr1lVZb194QB0nbGa+laMVpY6TmmANahXoFhBbqYE6p1G%20bHkMximoV0S1guNuDhaAkRuoZ6Ap9JpPyWOgnlVV78cM7dRj5qbBMust8eVQr9lZNrrekqUu8oyo%20H5mk0qh3i2hLXQ8R0XwKQwH1HU89u36heCOfTPgxUd8e82ngqNGkdOr9dGMdr1kIETVadn2Uml3G%20pmtdVlsQd33LRDqpdw5tV9QjUESsn4PidBo4WJ3VxsCxfsJTSIPHQb2aiCse59b1qLN2+6yn4vKS%20epKOLcsYOCFt5rhUP/tDWtcjjQqtrm+If7eT1GdQZeXvd+oA64ulU0/JlJgPk5lSehzUjz6SbM56%20lT11fSoh02t2yEw9i5moN1K79ZpdRL80bknmDMyB47jzRyTAJN1Pw0z9CD13/ZDHNnCGzANnSOt6%20FePC3PUsj0+3lZn6zVIX8azflPk1O3BTj75mRFGcP7XqI104lLPP+pTLof7o5ZeOvvS5Vb759Uf7%20XX90HFVtypdu3FwQyQsvfWOJKLms7/qbt+8vESXb8rn77VdWxign/n3OVurvPfuO3i9qn/u/+nN9%201ueDXL9I0GlK/2m2uoly4hdONN3GwPF4jaomMMVd798djdDBshT9oFu4ut4tn49arMFyZjjNwHXW%20W+o1u8rn3/e+ikXx9+7xgz3T2o7XpH6qqqgP0ZeyJKkPZJTafpEQ9fRJuvGF498mnkQ95XTqK5P6%20tBf1c39AgnoFqky0kvqRRm1tob7l074FYt2g3rIL9Y1HrKaevxvRLRVe1OOURBBv1PunWX4/9I9L%204vrByl2vbwaVFGt1/UBkECtmvQIxLjKBtH/+NpKF6AsnAmVQv+qD+jrtCqhnoDluUq+UWlZB/fj5%20WTxQdup6NZTK611v9llY+/VZnLr1KI16tZJk6XoJCmbXs856s1Ef1CdCna/ZjDVCT69Zb2kF9Qzk%20iJlVDhwimUy8gU94zTKNbU/h0vX1OO5G/XAUIup7N4VEgPkLZ9ySaeCoZuh91nMr8WngRJFJd3YZ%20Kah7sMz6lEhvor6Jur7CWdEvganrm5IKEhsDpwWNNNauT1mpTyrOTb0eFgvvganXr2HbWq/Z0BnS%20eFGfDzLaKhRRz4+53Iq1Bk6RLq7HwOEPtwC18rteaXTx3+FkJgnGqq6f4yK9HDhKciScA4eZOG5R%203xELBk7lk10brblD1/v5ZSPjBubAKTxiAM+ur6fE9kl9igrrv8Nx8d464TXLyrc94Ox6BKr+YgLj%2073P4QHCL+Bg4ECeDfPyaVSbahZzwmkUHnJQP88yuZ9C4Bwwacj7qDz/7b1HAIofPffq83/UHn/nY%20wcc+tMjRyzei2k2J7+sXv3lrU+7e23vhvX+7Kfe+9sISUbL173BuvLBkIjm+ffLfBcVoXDKR3P3W%20zSUTyf7Xnl8iSh4eHZrWdrzGwIk7xneF/q3nqZz1/IIkwidrzHp2H0F2YnS9/vpMOBsBNu0vjaeP%20iqjW3x5oRj/1scW/PtO1biU5jKoUSBErEHAGUtouwe+AqSIp/kvjJSXlA4Tz0CB2+Yd/uLYqimaP%20lfk4mQJjPf/AiRTxzOqxRcH1hcPs9TTBoH/hyBgG/Q//CqRBo14l4fEPJUrVBIhdTQBW6780Hn4y%20kCgGHqcBpgEppi5q0gA4bGyW+eff15PZCh3CfIgjk8T1h3/KRH5ytX9kUjiUXb5w7FpVNeoN5mrq%20aZyXQEw9bdCVeUn9zWUKvu5jRalU5l39pbGvhasMZIqbZ+DjC8dpV+jAl4qkt7+5VGi+ip0PGfev%20fbyrv7nsFXH1UyW9Kbt+19eDE5Em6pG6WMjvej3dGS8MknojsSVZBw7pdtezVPVgdSIGDgPZTwYy%20xWxtbUlAsWLlTdK1sJ8r0grqzS+DRj7MKvJhDn74nC0HjgI5ivzUU+itirLDFw7JhYS70J9uXzjA%20HSNkzPpqJV6SA6e3GMRd76e7lKK+g1g9cCDZyFxFJRGkV4F8SzZk4FmRTkn9CEcB0c5HzV5bHjhx%204agIMv1xuREpO3U9BL40LmfqhyT10KMFuKK2ueuHnxw4ajGVhF7LUl1h4oN6tVLq6u6kfoi6D7pW%20hKaS1I9MlC0HjjLpa1I/7oekun74kYxbS0kqLkC9XISI+jytJ3d+zYZETwHPLxyCuIqDIvTsev90%20o2e5uh7zJ59x/Xgp6h03J0aISs00DIaZb0meiqOQot6udJVfs6Q1VijKp3W92XdiY9ZnRVQYl7Vj%20FwpTffqc1F/Wd/3W/272ox/c/5f3LxLf+wsiOfr6S4sHydbv9/PiN15YIkq25hP2G05Ctvk/93e9%20b117cvtrtm5vGNRrduCh58AZj2R+50XX478Wp422FCiy7M9vbQUOPe0rEPAECw8pP0bShvhUkUT+%20nflsP/AECyfoirTCv/AmsXWB1ywEGefAwQOrxy0kMvOsxyjAqXbDrKiHcT6YIaKeoBFFYUmkhkgF%20As5AOq1AKlUPNQ0cSPbpRCBO6Z86zcom/fC0BTLeKpKB8F4RlRa3gbHuNOt1PcPH6q4niPts79Nr%20ti6JqNNrtvDq+g5SQUkbrReBUFI3ToPEk4IFV5IJxmpqvDUCyb5XpK01bgZa8ZSKK6kQF6JeUU8e%20OONHKuEGQ7Lrq0grRf1J1NimrgploySv20otvDlJfERc/ZdxSeITGDLizpcMnIKnhMpu1I/8Ym3U%20xzOIxxCVjIGDU1hSCbPs+rWk0fW1Rf+R+kb9CISSGAiInDOQcYE01lWNgvJm/0tFEtpPFQHXrZ0r%200tr8d1laBFdxLl2k67V26p0c1miKMXDSUvg0cIhIOWXg+LSMGUL41H3NPi3H7kRB2wW+YRyXE58q%200tawT0so7WlbUpriQnjPLtj1kmngJBjh54HjS0LZ6Hq21UR9blE5saS4RHiBFSjx4V9K4JWepfwP%20Y4hc2c8MDjwvKUU4xRUNvPxny4ecj/pH/V3/uvjfubwsfJfv+riHceuyy9z1dapbGrd3+sLhlm54%20vmZDH90Rp+p64KNHYBBZyqAstQrXw1u7IYHb7dia/TATKggEfK4I127ELW+OS70HIj5VpC3hAruc%20e+DQ9Ug0xNQbcex4O3ngGPElcVoDpxD5GdRrK6+qUim+KhRTE0g4oR9dEni5LSeBND/DSSiiJpES%20+9FWIBUIeHNSgYQXIhk4BSBvcyg7zfr5Hk6zfkzAqesZ2Fumvlka3/zCoUJqbFPGbabztAzWW+XW%20Dim8jJv/imgJt+nfWxXIOGS6avjPJCWL/7rqAl84Ke0Lp+EbAydEOSX1DWc27vpAaotKlVTIhDc/%20ksCn4lMHrrLRmJDhZ8NJICve/BTYA01447rjIYhL2XXgZMiI0bueiGT6pxJuYY0myoEDM+G6xF1P%20eyEKpNTlpHowJHCaEaeldNvLkitdlb1AfV8jEO2nirC2H9l0VQWiHzpPS+i0h3PieQlE9tJ9Cc12%20GzglcDRT74/WkGXgFL4OnNxqA2cSUQOd3Zr4oEZbUsJgwrHlQMBplsRZZvsRKPFRkbaE94ok5ae2%20lO3sH/kEHnJ+6sspFCRq6oWHX3dBUh9lAPRunC7U68KQHDjDQ6wRiKknIqErl0T/pegpUSCAwB2o%20URBI1O9AwntFUNqs7/5lTxCugGSg4X+Etp/yQKF+Xuqvv+tDLgs//3d93dKUZdaXbL5mKfNvLolI%20WQdOBoosB5jGITM+JHFZnt1+kXmgNdnAHajhDoonqdvP1J3/NYs5WC8NPD6iXgif4ngMoeTAiTwI%20poGon53AT33hdCdx6tT5aOsS2QReNiEVCPiGkxD4YaBCZEP7dNICneZHYHOSfoBURVjlRx4ozBMG%20u79mFTWUE7s+dqvrlY1zqq5n6kK4to/LWURNKLHVd0mBQeFahZfbCpS4RWBI4fQzAm3aFx6rEG45%20UOGF6BR+eA8WuegXTnivrg8kY+P2JvXKA5YycNfP2QDfTn1dHlJ+RE3z40DGDQ6DFU9FeMoIdLqf%20XtGMW7bhJbtQD6duJVRbXV+p6IW+2fVSatYbxwQgrlnfbglwf2nAIU9TYUkKpNMJ12n2+4rrJjUq%20gbeKeMqBRoNYe6AJl8JrW9ypUYBnLOBhzNMLDRytpj7cwSkHHF0v1JdsvGZhELK+ZlMi9VhhowIy%20EPBCaKlAst8UUSMbrYVLqS0Fkv9ekVb5weksPS6cnIRTfOMvOHAgU9cnCyHzwPFWVJXUJ55yOvVd%20FGgqFc7tULjvE2TChXTuNv1LAl8qCgm3wz4r0ummH0VZcD9z19/1IVeFn//v6zHX/Nmk9hldr2cz%207+1m14dxyDJw1BohvethmYEiy+pTtZgCEYeN3PbuTmQS2S8SZrSfKgJO/0tFcjv8ZEU6LbwQiXBY%20KnnmGac7DpzupaiHRK4ZUtTLRrwoJ1PfLI2f9IVjCtrllv7rrZZMBKJ9moVkoIZP3kzNzEvhU560%20ybiTk4ZDeiDi5QQ/BNBgl/+WqrKJFUpST1CtiiynfyqJeFgZsn/hZKlI6IRZz0At9ejBUKhX19OG%20URwocHmOVcY6Je7K0yEEfuaKsPbfEclJBrL/VpECVVyZpUH6scg/ZLeul3eED0XUR2bMoHZP+Fcq%204Z36qFC7cdqor/ygoKTGVwVSSeGQKxS56rhEgYiXsbbsf+AtEOI2swqU+KiINom3igpvp74q5PzU%20Izk6UqfULxLUHZV6/5GKl8AgLqnf1weYHnRJGzjCrTD1YVyBXJLM2goKGIhCP7zWfuATUoEGNRlC%20K/zY53AeK+ypV0UU4c1D+mz+p63dBk5c7O4LMfXUiTut5TUrg5D+miWPUMKsup4eKFRIQZnZiXAF%20El6Bmr34goQZ7QFilxToWuBUqiKa2U+ajUDpx5nQJqmncXrg3SWucNwNBcaxdU7qf+mnb/3gdy1y%20/zd/4d7P/uQChuy989fu/tSPLGDIgz975523ff8Chuy/509vvfl7FjBk/31/uSCS1zt+PuoPP/3R%20B+/5k0UO/+OTBx//0AKGHH7us75s49j/wLsX45Cj578UDbKAIUcvfmVBJEcvv2R3ZzyOjhYPkq3+%20t+DHe/ftcD6O791dLCXb/Oz2381a9HDlwPEz5S1+XPqyjWO8ZvOpjNMcOPQzHls9sOO0AsXPa3Z3%20xmP/gQLl6HCgGiDa6nELD6ls8f/yddJx9L8vlo0CSeyHnksCOfesL79W2p9ABSlyqgJOpz4MIK3U%20Puu1q0BInYGw5V0E2oX6ll4p9l8RUw98qUj46dSXZQn9AKxdGOz4O5x8aVDP73onzXcI9dfqer4D%20dQn9nPBxyUDVNbHiNZVX7Ui9L5ek/7miWCNQ3pJRkXZPoR42uoSWuir9+PLa2qXr25cAYvQvHN3V%20AKNfXqPrK5tMtD4u1Wv0BoXUwyY9a2vXric1dkIl/C8VUSHOQDqtrE6jnpZVkU7tJ92W7Nj13dGg%20nlXRAMprz/qsSlkW9aMHB/U2Q5QMtPusTxlP1VyRAvGWIJCQUJTwaQNnrkgK/Y/TuIU63Yl6ZIlc%20oYxZn3xxN9bXoJ7h66rwZur7s09Xop4s8G6lwW5d77Thyn7sv1WkVbhEFUFOHzjNbXnjLZyKkpyP%20+vu//vO3f/h7F9n73V++98w7FjDkwR//li/bOO68/a2LcUh8/97+sTctYMj+P75nQSQHn/iw3Z3x%202N9fPEi2+d+GH9/8hh3Ox9HLNxZLyTY/0Qq+sh1bqcf3+5///iIHn/xXb1/4ePBXf7Q4Dzn6ny8u%20iOToxgu+7IzH0eHiQbLN//Gd277wYsfxrVcWz5KHh7v8fX0+NVRi4Hj7woe/cGb/NSvxCOvJ5djZ%20YeD0kSI/sZb/QhTo6KVz3totR9xaO59lly8cvXmUX6yXS/3knwqpmV6DUnaf9bx/k/+5Ivm/dOrl%20NmJJ2eU1q5cG3zxQLr3r652mQCs1aswLdD2Ll0P7XypSoEukPuNmCdR3/7iUEuvldz3dViB1fSGx%200mb3n2abEyj1VNWWlMukPgdaV3YZOHEZVgk/Lr194cOzvjmPFV1JXVslOw6c2Y/9zxVp63K7vvn3%20jd+165GrOgX/VOLtCx/o+qi8tV6cinqMAmwpe0Tfhfq40JVzcPWubxUp0GXO+lYRBf7PR/3eb//i%20nbf9wCJ7f/Ab3r7wcecn3rw4Dzn4p/cuiOTwMx/1ZWc8DvYXD5Jt/uM73Rde7Dh66fnFsyRawRbt%202Er99fGoj2vqr+y4pv7Kjmvqr+y4pv6KjocP/w9DsOOKWU2rbQAAAABJRU5ErkJggg==%22%20preserveAspectRatio=%22none%22%20height=%22119.063%22%20width=%22118.125%22%20transform=%22translate(54.977%2048.785)%22/%3E%3Crect%20width=%22214.967%22%20height=%22200.095%22%20x=%22140.607%22%20y=%2251.887%22%20ry=%2238.569%22%20transform=%22translate(-133.376%20-40.914)%22%20fill=%22none%22/%3E%3Crect%20width=%22198.743%22%20height=%22201.447%22%20x=%22151.423%22%20y=%2247.831%22%20ry=%2238.569%22%20transform=%22translate(-136.08%20-40.562)%22%20stroke=%22#707070%22%20stroke-width=%224%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20fill=%22none%22/%3E%3C/g%3E%3C/svg%3E"
  },
  "design": {
    "board": "TinyFPGA-B2",
    "graph": {
      "blocks": [
        {
          "id": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -376,
            "y": 192
          }
        },
        {
          "id": "1330e624-ec60-4540-8f3c-34cfed146125",
          "type": "basic.output",
          "data": {
            "name": "position",
            "range": "[11:0]",
            "pins": [
              {
                "index": "11",
                "name": "",
                "value": "0"
              },
              {
                "index": "10",
                "name": "",
                "value": "0"
              },
              {
                "index": "9",
                "name": "",
                "value": "0"
              },
              {
                "index": "8",
                "name": "",
                "value": "0"
              },
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 616,
            "y": 232
          }
        },
        {
          "id": "18abcc78-0220-49c7-9c06-bd99bfb271d8",
          "type": "basic.input",
          "data": {
            "name": "reset",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -376,
            "y": 272
          }
        },
        {
          "id": "8c06e3f0-bcaf-48ba-93db-6b9df85fc2c8",
          "type": "basic.input",
          "data": {
            "name": "frame",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -376,
            "y": 352
          }
        },
        {
          "id": "40a9778e-b447-43cc-aaff-537e0fece33b",
          "type": "basic.output",
          "data": {
            "name": "sprite_write",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 616,
            "y": 392
          }
        },
        {
          "id": "f6fa7fdb-918c-4a58-94ef-46241bcc38fc",
          "type": "basic.input",
          "data": {
            "name": "activate",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -376,
            "y": 424
          }
        },
        {
          "id": "9da277bc-3972-4667-8347-661ed43f0732",
          "type": "basic.input",
          "data": {
            "name": "sprite_read",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -376,
            "y": 504
          }
        },
        {
          "id": "4c0573ce-4343-44c7-900e-83efcff27712",
          "type": "basic.output",
          "data": {
            "name": "write",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 616,
            "y": 544
          }
        },
        {
          "id": "aa347a84-7d5b-4918-ba81-adbf3db3444f",
          "type": "basic.input",
          "data": {
            "name": "ready",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -376,
            "y": 584
          }
        },
        {
          "id": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
          "type": "basic.code",
          "data": {
            "code": "//@include blinky.v\n\nblinky\nblinky_01\n(\n    clk,            // System clock.\n    reset,          // Reset.\n    frame,          // New frame.\n    activate,       // Activate module signal.\n    position,       // Position in map.\n                    //    {xposition[5:0], yposition[5:0]}.\n    sprite_read,    // External sprite code readed from map in position.\n    ready,          // Ready signal from map. Readed sprite code ready.\n    sprite_write,   // Sprite code to write in map.\n    write           // We want write code spriteto map.\n);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "reset"
                },
                {
                  "name": "frame"
                },
                {
                  "name": "activate"
                },
                {
                  "name": "sprite_read",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "ready"
                }
              ],
              "out": [
                {
                  "name": "position",
                  "range": "[11:0]",
                  "size": 12
                },
                {
                  "name": "sprite_write",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "write"
                }
              ]
            }
          },
          "position": {
            "x": -176,
            "y": 184
          },
          "size": {
            "width": 680,
            "height": 472
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "18abcc78-0220-49c7-9c06-bd99bfb271d8",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "reset"
          }
        },
        {
          "source": {
            "block": "9da277bc-3972-4667-8347-661ed43f0732",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "sprite_read"
          },
          "size": 8
        },
        {
          "source": {
            "block": "aa347a84-7d5b-4918-ba81-adbf3db3444f",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "ready"
          }
        },
        {
          "source": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "position"
          },
          "target": {
            "block": "1330e624-ec60-4540-8f3c-34cfed146125",
            "port": "in"
          },
          "size": 12
        },
        {
          "source": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "sprite_write"
          },
          "target": {
            "block": "40a9778e-b447-43cc-aaff-537e0fece33b",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "f6fa7fdb-918c-4a58-94ef-46241bcc38fc",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "activate"
          }
        },
        {
          "source": {
            "block": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "write"
          },
          "target": {
            "block": "4c0573ce-4343-44c7-900e-83efcff27712",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "8c06e3f0-bcaf-48ba-93db-6b9df85fc2c8",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "frame"
          }
        }
      ]
    }
  },
  "dependencies": {}
}