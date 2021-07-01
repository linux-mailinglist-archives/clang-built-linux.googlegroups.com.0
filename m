Return-Path: <clang-built-linux+bncBCKZT2FY4AFBB3MH7GDAMGQELK3P3RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EECB3B989D
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 00:38:39 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id b3-20020a17090a8c83b02901703601b0afsf6714114pjo.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 15:38:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625179117; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xht6GcNXo2PLY67vnGZ74+SKxbs57SnE4msyC9KCTjLl6oTenKx+VQj2Oi5E6IelYC
         cYnLeUBQ46tMRzuk5EFXa6D4aFuSs+jbU6FKHH+iq/nPjTECiPu7rcVuJzqXJfngJEba
         AtD005pp8ifIRetVuOAHUNDzDu7FFb14+WhkscYNqyvdKyglj2W4xTrN7mYLf0Cym+yF
         k9+50/izrfbYC8/E/hxOHtTnOp0o0kOx5rP8HXp0QwO61AVFXjZ5m7s441FWLyjaDTIB
         MXWVH07w9+SuNdH14JlZjXJynYsrKIjyI4msjkosuH1pwZOuXsfBUPb+vocXQlLtxSvr
         Mm6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:dkim-signature;
        bh=1N0uXOLU+woQR1EmAXfmqma6xowc+gHXGWZ5JcsfYMY=;
        b=ZwGUM1+odA9ruofQmHIRvlLgTT28MpPdqO4Hf2fmaD+yIeWOtWdSAz/WkIBkac5kUH
         aZXVZx+yGprQr1npkH9/zDd0asomlzwNQDq5Jq0YCzUi0t0ZA8fr/caDJMULFnDfaKm6
         Ll2jYspkKFZjPw9D/6cdAf4AYWMTJtnGLnKIf3g/av+dp4DaEihw0Y+AkRblAND4fdLR
         JYOU858BzWlZb1sLZ3QJDUYvllZSfmOJGa0v6FLNOW7JOQRqX12x1XuQYuOpGWTjALck
         Z7ikajqZdC81VB4/4tyYWZIGUBcVITTIaYdKe7vWBvav0E54D1eM9A+GCIOWTdaUR32J
         HUgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=sewmewAG;
       spf=pass (google.com: domain of xinlianglid@yahoo.com designates 98.137.69.233 as permitted sender) smtp.mailfrom=xinlianglid@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1N0uXOLU+woQR1EmAXfmqma6xowc+gHXGWZ5JcsfYMY=;
        b=ofCEYbf3yjbXAqVyTeQRgK1Ejr1pHv8AaZXFlFMwJm9iUWBYIN7F5dYPZa8IcHzD6Q
         +OIYdy65sD6kjwhYSQ0XB5bsyIlZxPKVZE3r30Clh9AsM4z25nE3Nbc++64waWK3m4nN
         Onp2qdu/WbdfufRbpOYr4i5z/7i8Fy5F5poq4s0JCzjTTlf2KwCZ4ojgCoh4w1EuPYLL
         6+Xgpbc2GWL0n4+mbtojrZX9QrKAYz7aCuHBHCaEyo+1YBqlnKw745zdw7+lNE3jauIt
         uSQT8crOgscxtWSLB2doKR76/xo8zAyARyZ2xlZFE9fQOf04lCqajKOUPYv2kbHfjXyc
         5Ckw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1N0uXOLU+woQR1EmAXfmqma6xowc+gHXGWZ5JcsfYMY=;
        b=rxUnKptm5SQ/4JwtsyKPPKrwSiej526ACqCGWevMjwUNpGnpYE5bAkJhNZ9XqmmYgm
         R/5tJdkDs1btjKEsZ+8SKvwhjhFcUXK4WjPQI8L5e7uBlpojv2794GhFEsspbKBg0yqx
         ysKGlch6M9l9AdbQymouT57/fIcDLj2RF4EZL15gqXTPLwxZ2vagat40Rki2JFJi7QTv
         dsMMMjUAzJdjyWwIStmt+IKt5ITrDo/wO26bD+cD+Zax0awjJQlxEgPaQantSZ/r0v8w
         yGFHIXV5JREpYli+L+mUCnROWZWt735tLLc6kzeeyXRG9dyrwnT2a9hjO7xkWN0F/M6d
         WCkA==
X-Gm-Message-State: AOAM533BEzJyUvUlLGSN0P/+rYf9nFRDc2YiukUckgW+wY3II99Bfg9Y
	Ip+00NOIWChEAHg9pqemVqQ=
X-Google-Smtp-Source: ABdhPJzJIojwb7lKMWhA/jTjUfRf97AzmQvdSUvY8fBaXetdsvQQokzWCWyYfwJ/3mprb7QfhE1d5Q==
X-Received: by 2002:a17:90a:9b02:: with SMTP id f2mr1817761pjp.123.1625179117381;
        Thu, 01 Jul 2021 15:38:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:2353:: with SMTP id ms19ls6802556pjb.1.canary-gmail;
 Thu, 01 Jul 2021 15:38:36 -0700 (PDT)
X-Received: by 2002:a17:902:bc88:b029:121:146b:3bf9 with SMTP id bb8-20020a170902bc88b0290121146b3bf9mr1531184plb.15.1625179116853;
        Thu, 01 Jul 2021 15:38:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625179116; cv=none;
        d=google.com; s=arc-20160816;
        b=UPWCqpsrOjcpPnQ1RymmR/svC9lp3cBv0DxuzlnQ+VXX5WjMAMgSyjFwuN7webLtQi
         y8Pvs0o0iF5eY1/pwa3/qaxIfDx8iDKqjJ186JuKvlZxxJV4n1mLWJjHrnHsqLi/RMNk
         Jug29/A5BtVU9fUvVM3sqpar69cl7MW00alFhbp2y4D+yLamOSpdIHlZvT8XGkAJ4UOs
         J+afwwoEpnMgat0Qu8lfd+vOyKNevcKFm5ukvT06zhhLizKC7sUFEGPs6xSWsFqSu8XB
         /ZldjyXsEnrqqljClO/BmX1DDq9i5xw+Vpkx/vDMMbvIUH5ibdl2F/RI9mHu7fkkYkUA
         zf3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=MxEH5ByRu2k/dw9cMg5LPKzBqNvuzBxp9XPa2OZ/Buc=;
        b=Chgey4sPH11R82v1nAFrSqw9w4npZX4RjjJFcxdXXVFktVFA1vyyqFnTlFPunWsn+P
         lRhwMCRdnYElbhk7dAk9ij5QchaO6hGztkzrzihj5Zi/FWzBJTnD6zAjMln9k0cdhTIF
         hr5dA9E5Bs+Ql/xPfEel3s/+4YuqQJHlWF25oyInmLMltVfSjRW1cQe54w4tv5cZyRex
         1Q4C45YiII9bQCf2qgz32uykcwGQcu3NjU6txFaTZ5K2hiERWcMvC5XZ1iiHDoRE2Y99
         pOSS0kYmTSNg5PrkWmE1vch2IFx6t1iOXMB5NwaYrD0rdfhKYGGWyW4/tXxCP7Q2ZeXD
         nGaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=sewmewAG;
       spf=pass (google.com: domain of xinlianglid@yahoo.com designates 98.137.69.233 as permitted sender) smtp.mailfrom=xinlianglid@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Received: from sonic312-51.consmr.mail.gq1.yahoo.com (sonic312-51.consmr.mail.gq1.yahoo.com. [98.137.69.233])
        by gmr-mx.google.com with ESMTPS id o20si142645pgv.1.2021.07.01.15.38.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 15:38:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of xinlianglid@yahoo.com designates 98.137.69.233 as permitted sender) client-ip=98.137.69.233;
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1625179116; bh=oMsW0FX3SfUhrSYQ3kbfcfrJeAQnAqCG/0i5WmcrGYg=; h=X-Sonic-MF:Subject:From:Date:To:From:Subject; b=uKeGO0yrQFErCgogw1rNfLWSF/kZAvxO3rfJP3MAlXthsbmN79PSaigJd00NeM/cUDN0hsTnw1oMeShaD8v7rESf6/eHvJZpUyylAgkh9+eXs2ugFyqaWspzDAusUaNp1iGYPd+u21/yofdEgCPlX49sUg4lhcX4MRD04CAM/0nKfy0f6jVPq0rJVRXHSyfq4To/aVIZGiiyAkTN+bl5PWfAxInKAiNlk3sLGi16/26/Qpvw6yUdJ8sTA3MpPeKUQct/Mch1OSM5egKNb+KDjQ894A4djC3ArnRw6TbkqRgwTX0iSAjC/P9qKw/Gc6x3hZN2WWMHbobBYMQfr7ej3A==
X-YMail-OSG: vLE4y9MVM1l_RpYsaLf9iKWZvsnw3LwbA8D5uV4QyaTCYEUV5GQ1KrdTGXXCyY0
 Qs8BIG8wMASTVyxLlWlTfB_xKehntp_UcOWKFKG9U5wIOGrh0JKogSs9UnkingX6Vfde9RSqCUbw
 ADMV5DDIYHbRx8vG50MwYqXFsYqQq3g4olQBquYhS63O25LUEgeGcNOQW3fADgZx4iZyKlz9zxbK
 Vmga2lWfUTd6FwtZw_8BRoIt6cVRkDQ8b_3rRVxTGejyMx4wNzhtX5aywu4ENFVZ8yJjQ9g2Zsll
 GFFDHkTE4fNetd2gXpknj9DIjyUHZysMmlEYqicaVAhb6uZnB5JLaMT4PP5BUf66mxi2sAuo_go5
 hMJtf69nJp5eQMP.vDnNjFcSjY0cF5iHkch9kLcA_YAUXBDWQSPrevfnCWaPRV9JgIL6WHCqZquq
 KKMCnXpFtvUzF52rhytIyLeik_b34n9gYJiPs4wA2bszw0hI837wPDnDyja46ZMs9DnevPXLHOzO
 EQEWe3I7V77MbkvMhiOK.rH.25yrAfMHZU95iMPUffNH0cC4jWE7s8D6Ns7jaXtSaGbZlywlMdfP
 F5aMtdDvtnJVK64jP47aEAZSa5x0A1SqjPsOkSzz.rSNXfRPf4D.hp4jqOQWehAXdg43UK2stvzL
 GwUdJIiTUru4uXXv6Mcf8L.F8gHUMjRGns6mpsLrYfOEV9sqNv6gTr4WYhEixZUqFqY.MGkX4Ltp
 IBM.m8Gtm3GNf.9CqO9xT2P5.mJtOcuADZefT5HEsOBaKL_GgZcIMmsOXUNuvghaBj44sfcZpqDe
 bZ1vwB8ZApAKCEbVx4T7r8MSVqUyA1hh1F6pu_Vc9oMGDWhVhGryRkIILRZTa0.JNmMqgvhrF6k4
 gRTc4fy2jezfpCRPlRc5zi7xULEFf.o09mY_Etd5KUhDkFRdadRrN2Ncf9nW93Tja5bx81coDzXW
 uSdHpbpkbygbOjfPxLo_2ZiJSAxkobgZv1oEqgnBVJg9RjbuhjWEnAb1OT.xXFOOj2TNGarJHNkY
 cqpNYdX2pDQlKrAVtee2Gsobb0pK9QC2YPhZNhkptwyNA3BLvbqKN3T7XbYhxt4ygTGmg0RZsiJe
 IUdPrYJnmFAjWqEj8rZ1J6QxAnMO8xp4S4H7qqIHvx_sKDBE4iwCOjgYKOGN4YnADH3Y1T4NsO5k
 qWVHHMqCZ6woQSiwV_zV.eM3g7x5RBSw_bxo2SHQJopnE9BKAuagbE730EUFmUn3CKIrwloPAgFJ
 2d82CbnB4wSImAko2To2AmHSne6U7zzZIpuY672oZ81l.oY_LNRF3xLev5y7NUAIwVUz_Tku3qWg
 0Ir0eABQeRsTYxahw_M5Z5gDmMQrBagALRjJmFiRKP_.l9CxiKXlp78RBasF43o0uIJJVh6WKwwT
 W5S85I4sUoktAuirkyC53S.NGtD4Ftt6Y4iZ0kmJe68OPGNpoyQqaU7nM3fSVDf6CZV3WJqU9Oo.
 FDuY4TqJ_DV3fLor58zG8P2vr0kHqLzpktpgaI8wV0WtvMd.FwttsSRCVN67jIiZFDbaV3Y0VgPM
 xgTGleIRu7fxjkz6lUwmbPsmN9.zaH.fZHwtPQUscWUuhCLmxl1uuwjlqiBxpb1aiKrdG_X_5HNy
 WCPsyf9OJaH.KTtS7o41PhET29i8.vSyhRk1PHlxxbrd5w06E4zU6.cNqVI0POymwpdVvCtxRCi6
 b7AOsyF4us6auubKDsd4fAak2CxE00S1P9pLSSJrIX1hvOL6HqAs2auMmNfXHObJhOknFcA0UxqQ
 GoyPLV.NTOh1dBimgA_3T._2N79nulsivnt_SS7jg4gwCitqXtY5mTb5kYjTTHUSdFq4gP2.GnF2
 gZi1EQDwHi5QHyuReYirCk0sC2qW34GKrSpg5ip2Gd7X1OaOKPgcw3Qh_JestEi_9TPZQ3zmTP5j
 eGUH2RIJcpWaVnHvRW3hhj8vTMz6HPBNQmftoL.JZqPD9Kv8CPUpbaWBY4eTP0s1EGfUAALhzdB7
 J7cHgUCplpqgsB44Fv9XkDhzLcnTEcFwGsX_LnMDkCwvr2GUPur79NdI33DWAmP_xF3Hwa.MYomf
 JyBwgwUsSH4reSZ5Ti88wEdXhALxDXwjrIq9tY5EtBJJWYT3P..VJXeKXzhir_FI9nHfiPApfZEj
 _D71oOQQH98yAtfyfgCMDuwvXz5_glyK7LO.B_J_F85ny1BmZ5MQakdQC5ykAYvzCyPRkVwpZtoZ
 5BvFB9fQQEiimgKekwa6Qn_5Bt1mJcbl31dOsSMfzxMAKkWEeJwoLcIZ1lsrgDhjAtLN25jJE4mp
 GH0kPk_QJ3EGMQkxeRGqO3gyBz0mM6.oC8Ju7AE8Z8v8Ib08tI0aj76UYPFeIp6EVR7UBsBmKLAX
 4Yx9bW4Qyux53rQ3glTNmrJQjv1grx0eN70ULq2nmxX1gl7r_vVwtJlz9F6LhZM2zXoNbshAIpBR
 h.Q2xK.wwS81DxGrbbmoTKnF3DWtjiiILW8CRCUkXTvh7I7njva.ZfigEmU3A36Smt.XtGCLhsnA
 iHe89kOvwm41UuS760vOBbeq9ewDVEoTlJpTS3EKsiipjW5Sq9zCh0xJQXlNReiBEBeqcTA5YKTi
 ZUnopOz3vJVup11hChzwoDjeWQr16af517pCptaUO52guN1wUeLn2C.JRaeNSoRt2zPEOnIm8uVc
 yeiA4etcAztvRVtUmW9AtNqjfWWUIUiOLnydSoHMOXHqPXS2WP.V2QgsZVK4rICHI3HgwtEFNSAa
 XcRxyT_D3yu5gHGMk_E7k7JFF45YNQoLGGCKb2HPp_mSuwBhiNzkQ7F0ZroqKIxmdtpAcAltwDUO
 t4fWuEsBCvOxvI3RMX8fJ1GGGs89np6rQH52IScbLe5g.XGlEV3qDcqpM.ZkTDRlFDPJiAU4DyxI
 oLLdNJEqZqyMbX91T2JFCM1xiZP1abb_Qh4x.FAh6Y36C7WhDP8opycHfq6ZBbKygGi7Tv73M3oe
 DJMOL3xpLOUceqfXo_zUG6Nc5qO.uiB8.B15zgpVV31N.72UMAdGjP5y9.sBhiH9GQ7wrS_Gsa9O
 _CJ5AuqQw1vNcElIlqIZH4lpJ8qryrdmmp8wT_T7bPpCjl8Jk2Cd.LzGULnjb8At_3sgHgDi45bA
 jHuAI6KoDzdRznRianax5qHrjZHhVF15ZJEjUzYa9NgsgS6Kt7WmwFtANdIh0NQheflbPbbNMNn1
 IKwyjxwNXuZJAnf0Rn0JyxHsGYJtyaFsKRZAakAI_GXNW03G.mWXzbw_bDIrDcYFgIFH64lPAMwL
 ezcgDfuKmViSFNGXZUeeNsUuQLxdEYfS06vL94q..f9dsCoUOPTeWtd216oMvT4EuG0MBLP7bSYp
 8AL9bkRqeachFruwyRW9jm1dbcIJNaVjZb1bkVg4PARyQWHIJ2sPHVCi9auiIc3AfPv7Biuzou2s
 teMxUr37e.dxKx6GhB3C2neYKaF5eTA3Y6O3stZebUD124HwH0bUnIYBFJOSp293FTfj9svkl7o7
 uyK5YhX2R4M4ZyUeJRa2cL21kP5kJq.X9ceNAcXu96XAip18_Qm3YaIIpkyeNNWOGX5hIY16x2Pv
 lr2AsIdnMO6d.SilpEIrjrJh.eKsVSTAdKLa1epjcTW5hcdE4iIKZhOX31YVq9n5wJbQ7Vs1SfDO
 s4WJ8qnC80j0UKJnZuoUjpK1jAK.EyooeZwq7_1o5jh4wjINOLsjPygl04GDW3DJVWWTO_Y6HLBB
 gG9aqZ7pybycfHuE48kSktQSKezuncpSMRcVsyIO0XgVTOLJavJOdgY8xyvWU61taymkGIVU7Nbn
 8QMP99JwHicEiVxNzWfVCoL8G5ovN8GLKC47Bjf3LGMQiM6mTM0aP_zj3RtIhm5Fc3lbmPMsmkPP
 rZhce98hyBF5gYxvO5XKKRzTFe8W9z5vbXHBw501T0_zi3NM7jtx_M.I0bXkUpw4WZmm9STQ6Jl7
 Yv6bVy4lrr7R5dhhH1s26WmPAvIevZokkKS1JSw--
X-Sonic-MF: <xinlianglid@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.gq1.yahoo.com with HTTP; Thu, 1 Jul 2021 22:38:36 +0000
Received: by kubenode548.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 0507f558d7284c2b7e401d7ac0ab35be;
          Thu, 01 Jul 2021 22:36:35 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.80.0.2.43\))
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
From: "'Xinliang Li' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
Date: Thu, 1 Jul 2021 15:36:30 -0700
Cc: Kees Cook <keescook@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bill Wendling <morbo@google.com>,
 Bill Wendling <wcw@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Fangrui Song <maskray@google.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Jarmo Tiitto <jarmo.tiitto@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Will Deacon <will@kernel.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <70A58D79-9EEE-4942-8D8B-173D003AF3EB@yahoo.com>
References: <202106281231.E99B92BB13@keescook>
 <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook>
 <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Mailer: Apple Mail (2.3654.80.0.2.43)
X-Original-Sender: xinlianglid@yahoo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.com header.s=s2048 header.b=sewmewAG;       spf=pass
 (google.com: domain of xinlianglid@yahoo.com designates 98.137.69.233 as
 permitted sender) smtp.mailfrom=xinlianglid@yahoo.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
X-Original-From: Xinliang Li <xinlianglid@yahoo.com>
Reply-To: Xinliang Li <xinlianglid@yahoo.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>



> On Jun 29, 2021, at 2:03 PM, Linus Torvalds <torvalds@linux-foundation.or=
g> wrote:
>=20
> On Tue, Jun 29, 2021 at 1:44 PM Kees Cook <keescook@chromium.org> wrote:
>>>=20
>>> And it causes the kernel to be bigger and run slower.
>>=20
>> Right -- that's expected. It's not designed to be the final kernel
>> someone uses. :)
>=20


> Well, from what I've seen, you actually want to run real loads in
> production environments for PGO to actually be anything but a bogus
> "performance benchmarks only" kind of thing.

For application PGO build, the training data is usually from real workloads=
 via log replay (by the load generator). The load generator can be configur=
ed to mimic different production environments, but the most common config i=
s to simulate the peak loads with long tail latencies.

For kernel PGO build, the training data include real world applications tha=
t spends lots of cycles in kernel. The input loads are the same as the  app=
lication  PGO build.


>=20
> Of course, "performance benchmarks only" is very traditional, and
> we've seen that used over and over in the past in this industry. That
> doesn't make it _right_, though.

Synthetic benchmarks are rarely used in kernel running in server environmen=
t. As far as I know, Google=E2=80=99s production kernel has been optimized =
with PGO for > 10 years. It was using GCC and later switched to Clang.


>=20
> And if you actually want to have it usable in production environments,
> you really should strive to run code as closely as possible to a
> production kernel too.
>=20

True.

> You'd want to run something that you can sample over time, and in
> production, not something that you have to build a special kernels for
> that then gets used for a benchmark run, but can't be kept in
> production because it performs so much worse.

It is true that instrumentation based PGO requires curation of the training=
 profile data (e.g, collecting/refreshing live data and adjust load generat=
or), it is also  true for the sampling based method.   This is because we u=
sually do not care about the average behavior of a program,  but the critic=
al paths running under large stress.

>=20
> Real proper profiles will tell you what *really* matters - and if you
> don't have enough samples to give you good information, then that
> particular code clearly is not important enough to waste PGO on.

True. See above discussions.

>=20
> This is not all that dissimilar to using gprof information for
> traditional - manual - optimizations.
>=20
> Sure, instrumented gprof output is better than nothing, but it is
> *hugely* worse than actual proper sampled profiles that actually show
> what matters for performance (as opposed to what runs a lot - the two
> are not necessarily all that closely correlated, with cache misses
> being a thing).

Yes, there are mechanism in instrumentation based PGO to allow collecting p=
rofiles for only code regions you care about and merge them (both online an=
d offline merging). Offline merging also support weighting.

>=20
> And I really hate how pretty much all of the PGO support seems to be
> just about this inferior method of getting the data.

We recognize the strength of both Instrumentation and Sample PGOs, that is =
why they are both widely used. The advantages of the instrumentation based =
PGO include 1) it provides more precise profile data 2) it provides more ty=
pes of profile data including CFG edge profiling and various types of value=
 profiling (indirect calls, memOPs etc). There are also more in the work su=
ch as dynamic type profiling (not relevant to C code), heap data locality r=
elated profiling etc.

The downside of it is the slowness. It has not been a major concern so not =
much effort was spent to improve it for Clang. In fact we had something in =
GCC (kind of like downsampling the counter update) before that can signific=
antly reduce the instrumentation overhead.

Regards,

David


>=20
>                Linus
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/70A58D79-9EEE-4942-8D8B-173D003AF3EB%40yahoo.com.
