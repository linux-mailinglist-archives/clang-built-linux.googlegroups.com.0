Return-Path: <clang-built-linux+bncBDJ7RGVF7IEBBKEA6CPQMGQEFJL6AEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0906A3608
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Feb 2023 01:58:18 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id z23-20020a376517000000b00731b7a45b7fsf3185351qkb.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 26 Feb 2023 16:58:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1677459497; cv=pass;
        d=google.com; s=arc-20160816;
        b=A/hY8ABoqNGUhch7QvCnNrqrk10dvpnz2T3rOyHJHPcqOcMmeJQF1SMdYU7hSfdGJG
         kLXqStbFLCW2h+ODmi8pdFJrL3fAwopPIKDwruLwiIh1jeoRCC6dc1KOhDp2uEGzjLfj
         4rFFK7X8zWIg97rQjC+dk7rJWmC9kUTN9RnUv8H0pWyW3M6UpfJDDq5j2INKpfXkoSVB
         NURG/u7Y7h957X7Ugsqnr0QUZOGQJZawQt1eNLLgWwTw+WjO3aZ0YnUymw+qHOZQFq7H
         PWpYej8Q4Lg0J14AwyCLDtFScTnnEgDaydhWQ0W84gQg3k3VoMQr9IzlH0W7M5yuVTGC
         7h7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=tMriLSB8WJKh1rqQ4ipejdyCVC34yCF2ffa0N6E5fkk=;
        b=uGeI3Iy7b+c378q9fmNwFx1D7lfLObiSukpLRn5Y5/aLmsucf4inj63Ix1Gux5HnxO
         obQdmWyxj5atKDjhgGowTTZhasWZ8gEFziQpSHykHSGyZXsFpnUPbb+MioCxutTmLR3p
         c88oSVzGiduQCtlpSX0sK8tJznv9QzXS05U9faa3cqyJbxJ5LY/ZWTavIC3WWw6IUC5f
         tHc6Hvi+qgfbP6B/HVqOdlifWxoZJ3DSVEfTs+duM3FwdiiKrUP9QktxfNf8RkTw0NWm
         q71qJ8FiIgm1qzap3i9AkJNwKd/ehXWCXoM73oRoP7uifLZKOhWRwuJKlPHGWHc/Chl3
         bt/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AnI3PehD;
       spf=pass (google.com: domain of andersondon401@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=andersondon401@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tMriLSB8WJKh1rqQ4ipejdyCVC34yCF2ffa0N6E5fkk=;
        b=MyTnufvJODHOjo55zUYMRYzhZxl44pg+5BjySAK6fHwSYys8HCVCEt3slaPISlq9Lo
         wXSF/EE8tntvi68PEtrhRndKIw+YfawDRo2FGGnEwG8tYuXjPJzDFpqOxp1XoimVdCXb
         CISgM5QS+cE1kYfON7SnycC57akYmjVsVAua03vR8C8tTpU0RtUv3iWKmsmz2QVT2sev
         mNI7B7E8062b3cphQvMJBvZUr1yp5bOEJJRoFNWuNWMfVlR7vwCXfGBsn5Ffub2VPvau
         DVEg5Tmlvr34a66/gBBNP/k8CtfikgSZSiRL8AeUyeVYVIxmvrVmmxQQ732drmy0Hg/r
         oKIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tMriLSB8WJKh1rqQ4ipejdyCVC34yCF2ffa0N6E5fkk=;
        b=kKrVGkVX07jQ4ZbaIKKsBoJS1w8yrAG/c1R/Gmb046RRr9iS7gQ5hadSfiiAKrDxMc
         WP/vey0iy3g1NgMbRdhHuBr5pwPyHKqfZlbY0mR2rUHBAR0sqqvIS2vfJ9RpAdhgDLJ6
         1YkTS6Rc4zNlOOH/AtXCHr4+PIEs7bVJBJiY9eDtsn9BqbPTRdXDWrjb/Pwb2AK412Tk
         E8H4dLtgBMRABam4f0nngn+iOv1ErZ4Tpa28AGAAeZ+Uvfp0SViziCuB9gS6zzzocDBW
         kW0eO4JBue9e9Dh5bWPnmYH1gXjtQSfHHWiuQfk++MBwdfjJCJdsv3yVhAXpXTQELBu1
         tB/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tMriLSB8WJKh1rqQ4ipejdyCVC34yCF2ffa0N6E5fkk=;
        b=dfPwFPmAsreq4Xsld/iNmKRWNyM0yCbGLo4jGpwtoFgMtAXhyB/AWQEIH9yvxGR8nw
         YylU36tT0zOsstmUgROj6xSygxM2PkAmGSkaBsAchnzC8ZAhTV5GOWyMjGf8006OMT5R
         PCxjT99yM93eBnnyhO2Y2YhmfVM+erZ7vMO8wAHdnFpoKfJrWZZSavF8ngvUnanKAse4
         qw1+ENi+hvECHqEjVJBoeWDe2wNH0TKbmFjKpHGyeXzgBXhuMrAyFr6bcA2P/Vid5u4y
         /emkJdHSLvgVmJl89/hDrHXhBg8VTOr4GyuoiOCY0UgflAfM+4fsmxzZ0RLL/Pt4uxOi
         gRlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKX4vh2euy3dxEOdXhrnRysewodWRdlY83t0xHO80VJuhckjuA4p
	JecpmCrt7FWL61ZJs730k7Y=
X-Google-Smtp-Source: AK7set9koWdMN19hbCOpLDOzXm4TPq1LJAxHolXitaBNoaRA/31taEvqILnK1SynX10SO7KFVoSfOQ==
X-Received: by 2002:a05:620a:1a87:b0:71f:b8f8:f3e1 with SMTP id bl7-20020a05620a1a8700b0071fb8f8f3e1mr2778534qkb.7.1677459496921;
        Sun, 26 Feb 2023 16:58:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:4c12:b0:3b0:98a4:96b8 with SMTP id
 ey18-20020a05622a4c1200b003b098a496b8ls8551151qtb.8.-pod-prod-gmail; Sun, 26
 Feb 2023 16:58:16 -0800 (PST)
X-Received: by 2002:ac8:59d6:0:b0:3bd:156f:6666 with SMTP id f22-20020ac859d6000000b003bd156f6666mr39654999qtf.26.1677459496331;
        Sun, 26 Feb 2023 16:58:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1677459496; cv=none;
        d=google.com; s=arc-20160816;
        b=LcXTZiMu5e6wYyO20inctqse2dGvwBoa5XcEIwwJdngOQiQ5Pq8JzXdZCMm5SiKDx6
         d6yNlBwkSOa+nsWTgiLXlPmuZiNESkwnxTo0aK+2w2sk18Hc59epd6TNF1Av1gRKsZvM
         p/+zODd0f+9BJmppvLBXqs9HMSRH79lUIa7mKB1HPdrSnyP3ZTP08ojlk50yM4BZ8JAF
         GDOOI/6y8T86Qm5r6QgzCg6TA9/sdh1KdWYLekTr3G+9eaoSki9zcJF63OsNvREuyEcq
         Pr3G8MP5YR3v3MFXsQ1eOR1O5ZRYuF6L9v4JkqqoK19Ik45zntPtG35PI0k9Fzkf75zt
         8uwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=HZ6EvyfqhGG/NgcCDWOjrdRqV3g0o4pPRQIgirG9ZNU=;
        b=RdH4XQGJS7Sv5Eo/ZeOHTj0wnT4vjNLS/LpvjQrGGmWNPpIpLm9bHWDS9SZKtB8GMO
         OmJcM0bCIoX/ID0WricgXZPRDikve727Gl+UT16CFnk3hw32zamTu9jdzvVKyUBpcsIY
         LQS0MbWHjLDGYY4sdXoJj8N/xSPdiKOMtp9EAvN8KW2dz3/SKVNByba7fJmdZdvri/4X
         t1HfPA7GL+6MVCU/JqmUbvW1OYx7lE0f/9oBSETZm0tkyJXiOmJBSXx3gQRMar9/1f8s
         hsz5NmOiwg/k7J2q2jkBzG+rythd+AhuuGyLhli0EiO9LxEOK3GHHYBLjzILqcfOPbTr
         UD+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=AnI3PehD;
       spf=pass (google.com: domain of andersondon401@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=andersondon401@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id h26-20020ac8515a000000b003bb820fca79si221760qtn.1.2023.02.26.16.58.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Feb 2023 16:58:16 -0800 (PST)
Received-SPF: pass (google.com: domain of andersondon401@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id z2so5069460plf.12
        for <clang-built-linux@googlegroups.com>; Sun, 26 Feb 2023 16:58:16 -0800 (PST)
X-Received: by 2002:a17:90a:3ea6:b0:236:6e4c:8a1e with SMTP id
 k35-20020a17090a3ea600b002366e4c8a1emr4072651pjc.1.1677459495230; Sun, 26 Feb
 2023 16:58:15 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7300:1804:b0:9f:620a:97ad with HTTP; Sun, 26 Feb 2023
 16:58:14 -0800 (PST)
From: Anderson Donald <andersondon401@gmail.com>
Date: Sun, 26 Feb 2023 16:58:14 -0800
Message-ID: <CAHF-t+Q52xKiz+eb96hYgmS8M+1SkViP7G3kQWs7kz__1eFMsw@mail.gmail.com>
Subject: We finance viable projects only
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andersondon401@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=AnI3PehD;       spf=pass
 (google.com: domain of andersondon401@gmail.com designates
 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=andersondon401@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Attention: Sir

Our Company is willing, ready to help you grow your network and offer
you Loan funds to complete and fund your existing Projects. We can
send you our Company Terms and Condition after review of your project
plan and executive summary of your project, if you are serious and
Interested contact us for further Information


Best regards,

Donald Anderson

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHF-t%2BQ52xKiz%2Beb96hYgmS8M%2B1SkViP7G3kQWs7kz__1eFMsw%40mail.gmail.com.
