Return-Path: <clang-built-linux+bncBDBKJMH3SECRBPMDX6EQMGQEP3GTBVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E773FE1CF
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Sep 2021 20:09:03 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id q9-20020a252a09000000b0059b9b61f6cesf124599ybq.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Sep 2021 11:09:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630519742; cv=pass;
        d=google.com; s=arc-20160816;
        b=a5gilimDZHtu/Es5ZdiQ5ISzlQ9BRGSTRLZSvvMx90Hrhj+kOe5LKI6Asc5Sg/m/44
         ATvibJf7Ubfqe/8fU0QdmHvgWWSJnXf/AYmawASWjQrj43lCY5xznSmJa/oqg1HQ/Hhu
         09xkPQJorVd7JzYh1xQUUNwZecgANo5oqj99+lveqZupf3lLPve06bxbVzXx5RPcF5Ng
         RSwv4k1JiYTE2xTgzAoEdx42uzxckJBVYijyVtjtsCdnOJuFQ0QvujGw1S0UsZpHGhpG
         dxCjTDhDFt4Km93zm5qBZSUlvBoA682TyeaX46bkCKcRu38DubSjFMOYhWDjAqxyK6/k
         NWpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=N5/CDJoq14HhcuDZidotT0pAgQXdPoS9mPYj2/RYM1Q=;
        b=IM/Ei7t6xdl6mqs5UR/A0YzwzZwHJ0jNt+pHhObtPuZ1jp9EMc5AeTd+8Eek6eMGWQ
         OH/MfZL8VCW3FRy8owG3wtLTO/1Deo9GaHdYVev4f9tEuVGfyJM143GIVCHJTTmngTE5
         xrFTJPD3hZKvnWez/Fd7+trAZjGLom07hpmc1Pj/ubL+TUH0kwjJIYyXtghbqs60xIA3
         aAjZkFjeNfL9j8lywQdr/rGTQkKVXCEFCY1kEpM7jvO3v8GMaoX8JfSsVesomOrnfr3P
         /MTWPvKTvMFaIqnvD4X1ksfbRGIUnPH/d6Fbab8jaHJwznu6vgBA7V0hxteOaXxTvYQV
         YaEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=dSpSs3KM;
       spf=pass (google.com: domain of corisbankintlbf@gmail.com designates 2607:f8b0:4864:20::e34 as permitted sender) smtp.mailfrom=corisbankintlbf@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N5/CDJoq14HhcuDZidotT0pAgQXdPoS9mPYj2/RYM1Q=;
        b=l3U9dKdg5EOYT/EKBGM1SS6TMy33Gi22zKDzUloUhYo7Ojb/T2p5r9FdCwgkBNC/8d
         mOx401/9QMxFqqkY3qUbUaf5/Jd4Hj0hhPTgQWqnT4De9FgLxlNlyhGPjdlCT2qC+UEJ
         Zw9zFIKGt1Q00SOn+luDi2DHUVf3tVEpqr0hxNBKz4NeavkfSNXH1bcDWK4kfpzXGSxW
         pzWXB4U5xbZjcRv03NOnvgfUbLX6VYfdnDirtQ/kozOXt4Lp5qQXY5qZBukvFFep3076
         /cQvjolSnsZsy3LDAK1/lnbbU6MGMHwLJhAVlQ+OJt2vU15OZLIRPFvvKNMZK6byiXLL
         tncA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N5/CDJoq14HhcuDZidotT0pAgQXdPoS9mPYj2/RYM1Q=;
        b=CAmfoyY/tVFVsi+Pajz7f7jXTNAJ+adlbwhJo6taiEpDXrQBcDu6EbUo6obrMmtT+F
         lMLX/NMHWV6dA6fzGfZcLhOVy3vJJDx+1g5XPyd4Bvccl6aUnaGgh5An3uFQ6ynaTkLq
         lxkFy39UCaQ5VekRnpoaZ/wzY8YPoynGpwKrSvPVGa/ufTtlek/b+1zn66HDeKuiVTJq
         EaRhfUC4LX963NtB7d9Vi0atqcP1857E8vGV9tgXE1vZXc9wegugiW3WOcfSZReZT5QV
         Ms5zYz7uepjqmxINW2Pe8gVWM21bG2y/xEnso+DeMH37rWlZihw2IHuV9S5FPjhHMRxh
         5txQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N5/CDJoq14HhcuDZidotT0pAgQXdPoS9mPYj2/RYM1Q=;
        b=JHoPYqietlA2V90PS4XG+w6CrHzl6g2YLA3D7H1ZrUN3Bq5rwasJQaCPlDKKpalcGr
         P/x0kfhj0g+NKv+cAkBQFt/jOEsp/7JXutjGaJgAbNtG1HVLaspSKPBwzWaU2xYaoIAi
         P9aRsoqJ/iTqWx/tCxeHTKYlCWSYAU9lIR9fkKp++4EdHzfc9fdUW9iY+jYE9WAqiJ+4
         LgSELyXrpdkl5EUOcDUzSbJuFewM1bFPCH/RBQu6ukYsXFyaxMDTtghra1CUS9JUXZ8z
         QNy76c7spw58QKdXQtG+hFDkwUxUqFrGJd53WhLkS5SID2YovsLEMGKvc2MvRaNnXEMC
         KOcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zYVCkBIzsrmx8vYvFApH0YeEkTliHse2KibFad02/Acx/+wwT
	v88VtR0U4PsFk8THY+Wsvd8=
X-Google-Smtp-Source: ABdhPJz9m4WbKf+1vJbKkEwCxSDk3Pyj56usxABFQokznzupZVfiFS6su37zu4MrgYl9zPKzp7N3Ug==
X-Received: by 2002:a25:2cc9:: with SMTP id s192mr1017491ybs.137.1630519742071;
        Wed, 01 Sep 2021 11:09:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5946:: with SMTP id n67ls92379ybb.3.gmail; Wed, 01 Sep
 2021 11:09:01 -0700 (PDT)
X-Received: by 2002:a25:54b:: with SMTP id 72mr1077470ybf.237.1630519741680;
        Wed, 01 Sep 2021 11:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630519741; cv=none;
        d=google.com; s=arc-20160816;
        b=EEyeY+ogkURhA5q+Sp4PnAKhdSR2vI1UMUCvh7ye2I/FfFEahgp2myvqE8LdxAd72W
         T0B+USGWR6K2vyXAsvf6QUoJW4jiXDnROKg+MZcMrxP43eJEUavO6BFozGX2oKIZZ3/G
         wrzGMwxOlXbMhpyf7hFTB0Jfk5Bt1GDUWGJX94mrcx7nH7ej838Jhx7/0owP30b0qrhA
         7/aTFewickG+2Yk03Z2TYXiROIfmJfTjluShi5LGlmAN0SJgZKjZn+DRB+c/or7zXjhk
         sul+O6uCTF6jkMMX13ElE9NOjoB+bzOYHX4LdEvdik5TKr7Tc5jXyKeww7m9WjRsXHWt
         wixQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=2joGkq8i8C5vglZO1FYNTlWqLyr4vSiCXKQYXBVnv4Q=;
        b=dIa2B31H9BcW5RMoVl6w0C21mtMZfRlNcNJVnSUxCXJCnH1SyIUajV3q9SPGl3HPkY
         Un9rF7a3AzMHgdwMcSkjHqImPpvCtZNKHN21TKvF9+valJ/sx7tsjcFNQq7FvS9VeGjz
         9nv6d19nY/tpBhdAg8NzCZH3I2VRte2aFymZoe2RiVwTGREFQkOlj7vQ5wvbB3EIg1c7
         XnSwbQ0MVv0HT/YChnmFwvoz7cH3p/C2W8DeFCxL1/8y8iUy/Ta3R0BDf3B3XOd0GzU/
         Xo1Ft6S4iwr3epaZOINDULPDYtfnIp5W133GdZs0pTYcl8hpyX5EnKOBuRApY+E6qGEU
         oB6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=dSpSs3KM;
       spf=pass (google.com: domain of corisbankintlbf@gmail.com designates 2607:f8b0:4864:20::e34 as permitted sender) smtp.mailfrom=corisbankintlbf@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com. [2607:f8b0:4864:20::e34])
        by gmr-mx.google.com with ESMTPS id x17si42496ybg.0.2021.09.01.11.09.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Sep 2021 11:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of corisbankintlbf@gmail.com designates 2607:f8b0:4864:20::e34 as permitted sender) client-ip=2607:f8b0:4864:20::e34;
Received: by mail-vs1-xe34.google.com with SMTP id a25so583914vso.5
        for <clang-built-linux@googlegroups.com>; Wed, 01 Sep 2021 11:09:01 -0700 (PDT)
X-Received: by 2002:a67:ec4f:: with SMTP id z15mr850764vso.6.1630519730387;
 Wed, 01 Sep 2021 11:08:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:740d:0:0:0:0:0 with HTTP; Wed, 1 Sep 2021 11:08:49 -0700 (PDT)
From: CorisBank International <corisbankintlbf@gmail.com>
Date: Wed, 1 Sep 2021 11:08:49 -0700
Message-ID: <CA+25hwxeA+KEwV+K_EcmnY4zAc43=7WEPv4coXf0BVX6EV9Wgw@mail.gmail.com>
Subject: CORISBANK INTERNATIONAL OFFICIAL NOTIFICATION
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corisbankintlbf@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=dSpSs3KM;       spf=pass
 (google.com: domain of corisbankintlbf@gmail.com designates
 2607:f8b0:4864:20::e34 as permitted sender) smtp.mailfrom=corisbankintlbf@gmail.com;
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

Att: Client


CORISBANK INTERNATIONAL URGENT NOTIFICATION

Notification / Notification/ Notification

Note, We are writing to inform you officially that Finally the Central
Bank Financial Authority have approved to transfer your $8.2Million
which was signed by late Mrs Rose Banneth the COVID.19 victim to
transfer to you, Late Mrs Rose Banneth the France Lady contacted us to
transfer her fund in our bank to you for Orphanage work before she
died by the COVID.19
and as it is now, you will receive your fund through our corresponding
bank in Dubai [Emirate Investment Bank ] for security reason. Please
you should reconfirm your details to receive the $8.2Million.

Name, Country, Address, occupations, Age, Telephone number, account
Details so that we can immediately forward to the World Bank to
transfer the fund.
You are advised to comply on timely manner to permit this esteem bank
transfer your fund as scheduled.

We look forward to serving you better
Your Financial Comfort Is A Priority
Thank you for choosing Corisbank International.

Sincerely,

----

Mr Diakarya Ouattara
Managing Director
Bank Coris
Burkina Faso
+226 556 163 37
financial_bf_info@accountant.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2B25hwxeA%2BKEwV%2BK_EcmnY4zAc43%3D7WEPv4coXf0BVX6EV9Wgw%40mail.gmail.com.
