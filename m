Return-Path: <clang-built-linux+bncBCQP33EVWIIBBTFURPXAKGQEGHQ4L3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A0BF18BC
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:35:57 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id i124sf3664647vkc.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:35:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573050956; cv=pass;
        d=google.com; s=arc-20160816;
        b=nHsSi8YC2tTDlj6SxB/6SITp9QN3uNnR5NAU3xE5Uqo/0fgoBIIX/PE98Gf8HooFGp
         ydB+1nPOuBSGK7UFJ6HFm6edA0+Ijlvxis8p5BJXk5TmKNR2bV0oA7MzDxS1jvC8jG5M
         MeTvp6ieN1+jjKTJXed44GPD08ddjMg1Kw1MsBhttI6nSuIZZBC2FIZ7DDr5K485dp5R
         pdrSYEuaVPbjFTaD7gQSd00QLTyhQz+hNmeeZ/6/hhsFJmJuG+iXM2u/ahVkwtD8Yeiy
         88caUs6bwMXPty5E9c3pro+r5jtTPGk0B9odfPWslf4CFea0K9vHV50VPS1mmgOH1MpD
         Ajhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=ey4isRALcI48lFsZcJVlbsMefSYw3f+XHPRvONZHNHE=;
        b=Ritqp59z0hTCIiRm1V2WUn5NMKq2UII72kPJ67GgJI/bbJY1a1XyTC3y4JkA864lle
         oJpXIjTIWF4ObJ9Ayc6kwsHx9GhISlu3X9cMJ9rdIjfERcKCKiw3RytJ3vvcGTvZTbtF
         vHycgP3a4r/EHxrlr3lUaPj3dqS1qyNCJo9ZCWjFvs5djzAvtMK9R0g/Xgm/ebX04Igo
         7eJCOIOLjKzJbFMff/zIKDICxZH6uiZUOtmco9L8kJs9QnYub9jeOZb8Zw69MCo5Sz6j
         blTegGt/oa0fw0JzECoZx/WyNguC/wWbLnR5PPxp2sTJ7JbK7dy+S66MWLxwt2HIuuOC
         7zKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q8kPKc0K;
       spf=pass (google.com: domain of khadarnimcaan111@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=khadarnimcaan111@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ey4isRALcI48lFsZcJVlbsMefSYw3f+XHPRvONZHNHE=;
        b=Tvp6+MeWFUQuQvSxyRZz4VOE8xyesYVvaGrbnZDn94/dM9mIZAUkY8o+YPTjDqkK9C
         OgsV0x9q46gIyMfX9YX0eHEWu+BN/xmDtne7xXQs9/cLjf1QQaN0dfRYIvBOWwJsPBlI
         VsYnFjEttItPERHrEb0AYFeK2TzrKdj5NXUhrBSnqxdhhKNmsq17jDokNiAPX2xiJxR/
         ztwe1yRyJj2bWtdKo1ybAAYmPRjiLXDnsj7T1lZDWfg8jxXczqmklVoNUF3+p0C4Mhfh
         WEYDdz/WqBInzKb7Yy4I1d3B+NF6CZWDbyqeihJg6CX6v55a98Tzy+SxDqTA4wUAl6KU
         5Tvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ey4isRALcI48lFsZcJVlbsMefSYw3f+XHPRvONZHNHE=;
        b=YgTbYuaDyJw8YplShhBUzap0Er7gkygtm+efSCkSR8yH6XxJohZeREH4tlz4JitOUj
         PdJ0pzK8T1fBNkaB8x4VKOd6gOCCVYDQPRxLP7A5m6wmxGADrX3nFdEj38OmVghwrvmG
         UD5dc3Gq85LR7mMpmJfDsxtJi4vk/JmI+0/aWXu1FSUFy1AUCbxAtR0u+CffaLLwxRuq
         iMW/5Ramn1GTyby1rsrJfabYnUOetLl9/aM0WxwViIyA6QZ+F0+c+NCrFgrOFC9KpTvS
         Y6h2XOua4iNxHq8T+KlHsfP/ATGCU4XjI08jhwWP+wS8vQ4l2XltGQYe80br/QM0c010
         fRlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ey4isRALcI48lFsZcJVlbsMefSYw3f+XHPRvONZHNHE=;
        b=pLScaCSEE+v6eUybIBlt513ttapk/Uvu4OmNtW+SAKKRSuTb9VFLgF0TJGE8tHpqtb
         Y6+Jkxd/1My5o/w/SOEA5EgSf6Ad9YVPtRjcyPQjCQXJUogcSWSKisaWZzhtQE6tG0hg
         EZSKRPfoVE5cZXCUBK9M37lSJhrh8eLEzc7aGKfYgigv5C1jq3hR3xmh8Rz4Q1/DL9vU
         aHEXXTYPpbjoaBOzDr2Si1DfOTicP5WXtlRg3lqnN8M7KQ7EsR4IMC/KoDmSTUNrBU6d
         DLuN0a4XdDizZfXjfYgT1dWCK/juRpvyZRlUa6hoghwW7Z6EiTrgrUHpJO8u7w5r5Xwn
         hUEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwQlq+8X31tg/+dTaMmy5EByxMIqjg/rlIN/DgGDt8IqQgUBIw
	eQVti4M6egu+C12aQ7mynvs=
X-Google-Smtp-Source: APXvYqz8AuUF55s6mM5/GhG5uXS8Am0eiBhvxSlW/U2Sqv4ZeGmJSFFUU+0UYm1QeOuAfNQocP6Mdg==
X-Received: by 2002:a1f:d604:: with SMTP id n4mr146613vkg.1.1573050956322;
        Wed, 06 Nov 2019 06:35:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:21c7:: with SMTP id 65ls109917uac.12.gmail; Wed, 06 Nov
 2019 06:35:55 -0800 (PST)
X-Received: by 2002:ab0:2783:: with SMTP id t3mr1389021uap.31.1573050955238;
        Wed, 06 Nov 2019 06:35:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573050955; cv=none;
        d=google.com; s=arc-20160816;
        b=g2IJBw86JWfyN33VlWuMvVMflokYYLBVRQp5Su/crKE+pRnDOP5EBe+jC5ZTwOAC4q
         RNZ3k+4WW4kDNPIc2kgqrikdW+soUY1NFv+JZDrqRxUSxXB3EvXWsuL0becUMSUT3ik3
         FiarsH309OrwGo6RuG4HFTT53uS/MQWDw8F8VuxY/EQtegJi+1y01aclbMIBbm/6F2Si
         lEJaJOUWPm4DcilgOlz97KneApb7xhR71OaTsmJhRVM9pFxQJKJC3TskcyMmjAQHX6YN
         LU7dVjqN/+EnzYI1Pop2dcGTLuf9Fmp6PQTG++e9nN3rSzItqHt8QjNwMwRXr1zEoSnu
         gKBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=562K0q39gA1+720lw7kmvZVv9/3LruRwHJbvkcLktSs=;
        b=xlUxN5frD1bv8wfYPsy0jGtkblqNvrquRQ4y4SbcJSK/Qwa6cTlh8nbrBl8l4SYbfc
         x6EkWeOtPTaeOmuMq4biVKbZG9ffj7jeowcX26Ddz2+iKUQzt3/5cMILdo+eZV4RY/hJ
         +EZDAn5RUmLCmMz+zTTbGBHpkkATw29EAmlUIzhW2CaSloLjZOz+lgZlRgtl3m9XKFWn
         aFV3igy0i919673oxNDNanpo+EHW6CjR/1PaXuNe3mNYpz3CQuEUK7OwCIKpJbSh2uR1
         dS9geKr1S882S68JGyijMCguxfGmNsWLj9ueQro5LSRnNq38SPo3iWV1sdh7QXOm6kcW
         5F0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q8kPKc0K;
       spf=pass (google.com: domain of khadarnimcaan111@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=khadarnimcaan111@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p78si1408883vkf.0.2019.11.06.06.35.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:35:55 -0800 (PST)
Received-SPF: pass (google.com: domain of khadarnimcaan111@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id c184so19063705pfb.0
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 06:35:55 -0800 (PST)
X-Received: by 2002:a17:90a:3486:: with SMTP id p6mr4311554pjb.102.1573050954172;
 Wed, 06 Nov 2019 06:35:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:344b:0:0:0:0 with HTTP; Wed, 6 Nov 2019 06:35:53
 -0800 (PST)
Received: by 2002:a17:90a:344b:0:0:0:0 with HTTP; Wed, 6 Nov 2019 06:35:53
 -0800 (PST)
From: Khadarnimcaan Khadarnimcaan <khadarnimcaan111@gmail.com>
Date: Wed, 6 Nov 2019 06:35:53 -0800
Message-ID: <CAP_gnDwDe1intSY2QX0EVtU+tDW8mRZceFS9_hP-=aVcyyF5Xg@mail.gmail.com>
Subject: 
To: clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000564f8c0596ae773f"
X-Original-Sender: khadarnimcaan111@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q8kPKc0K;       spf=pass
 (google.com: domain of khadarnimcaan111@gmail.com designates
 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=khadarnimcaan111@gmail.com;
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

--000000000000564f8c0596ae773f
Content-Type: text/plain; charset="UTF-8"



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP_gnDwDe1intSY2QX0EVtU%2BtDW8mRZceFS9_hP-%3DaVcyyF5Xg%40mail.gmail.com.

--000000000000564f8c0596ae773f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAP_gnDwDe1intSY2QX0EVtU%2BtDW8mRZceFS9_hP-%3D=
aVcyyF5Xg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAP_gnDwDe1intSY2QX0EVtU%2BtDW8=
mRZceFS9_hP-%3DaVcyyF5Xg%40mail.gmail.com</a>.<br />

--000000000000564f8c0596ae773f--
