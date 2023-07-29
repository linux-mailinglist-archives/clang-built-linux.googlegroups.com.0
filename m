Return-Path: <clang-built-linux+bncBCQPF57GUQHBBFPLSKTAMGQEJRE5L2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E68FA767C9D
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 Jul 2023 08:45:42 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id 3f1490d57ef6-d114bc2057fsf2697167276.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Jul 2023 23:45:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690613141; cv=pass;
        d=google.com; s=arc-20160816;
        b=UcwURmw8pU4usH9bvSjiClLxz+HyyjEQnGxwdKsc9XyZ+jTeGmLTlHImIZvG6rxkHv
         l1aKD+dbaXMYOOYqB7EdbfLFHWQpD6QBkxoCmkZjNOqTWHwPckl0soOpX5Soa+dJIO9/
         2vpQ6SZfCXP11shWTG8t+WMsciBBxRMrvaCBxAqQfzVoR0Ij4ehZzNO+OLM4Lxx5RGmQ
         I5hm8RMhztyow5dsjOzpinrc5/aHiFRB+coOek+t2kLA7fzDlkRTzswkxD5OvO04HQtZ
         QF4LoUINc2RkgjAFQNWsE64K6CzqD8+BjtbkhRZRr3NrrjSpZl4llDHaadO/QsrbuDvL
         ULqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=+o5vnr6zzsBByugM+gfLLf8v8ifL5pUDB23KRMnXPX4=;
        fh=9Sf1cwC3IM+pTZwi7ML7RgkhHOFS2wOcp1S+Uy0EtJU=;
        b=AmrUerQpiEiGGjujdTMNkMoKCEHM0MIT3rvtTi+iW2xMteW6ngB1ISG6ZixXbK+Yle
         AdiwtKsI7zXbVI++VjTsc/ZS/3/kYq2EI7trMJGILV5wyVOH9c+YHevkLyc5n4NE7IzN
         gnP7qnK4wsitOpV1OPdXDhcaPl/sP81/wCCwtB5xrP0WRdwQoo50m+Zbnr5wVr3/IhmG
         vZwBP2qwfu96SiMAT/cSadzu5wbuH2oP0eKWgx3USh0N8/Fd+GFy616Il9Iknir6vi4r
         66y+g49sZedGQ1eP7YY5et/jw1gh7cuzF1zgwlh0zgrbcmnpjnpd/omH5d4QGUP8J9ms
         zWrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3llxezakbad8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.161.71 as permitted sender) smtp.mailfrom=3lLXEZAkbAD8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690613141; x=1691217941;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:from:subject:message-id:in-reply-to:date
         :mime-version:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=+o5vnr6zzsBByugM+gfLLf8v8ifL5pUDB23KRMnXPX4=;
        b=dPzwTYG1R4JNrXxCglFNj0I+l+3h7OZAThiI26EXUzVP6rRy9MuMBcImrhR8W/++Yd
         f+3IBH3xhwzqPQ9kW9gFV4SWI2CImMFVpp637BL9fTDKyOPQk/XWo8ftBO3JbnwJt+VQ
         9hrOHRVGAwYRjiIBbbTjAwIcNIZXyZERjqb2XXDdp7ectGIiBoiPHsQsYXJZ6mNqU3sW
         5Sx7WqGLW4IkYKHMVAJgVHVe+/dCMyEtPxGQbNsVlS9QBrsVdJhmwuarf4eqv/BEoagl
         UuAvqQmenVJ48numkYZyII2+guZ+91f9gPgKNLOhaRztVZ0WRd956+YqVt4zczuAMJWt
         Qe1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690613141; x=1691217941;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:from:subject
         :message-id:in-reply-to:date:mime-version:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+o5vnr6zzsBByugM+gfLLf8v8ifL5pUDB23KRMnXPX4=;
        b=Jh3DmUM8cquGZa6nubwcVISnAeIbu0GfkHWhe+Fg6103ySYqF48a2inWOfYygsLyZ7
         6xbkAM9TQkdf3pcIbwJ2TYSw5BRAFmTwSt3eSsefowyagA6TCYNThG8BdsDr0S6iGo7C
         /lGTJuNiqnxnFBu6CITFX/wibMyXWraGZEFQAHDdGHjRa/0ixf+M5uVTydn/l15a/LOI
         jsLDg53xymppSLm7w6f0UCA20jHBKX28h6AUyk3qnYNoD/71XaaH9f5XraiCb/Pjs+uP
         kVCO8GaWdF369fUjReZcb9Kdj0BRnegttfIXI8c+2CHZF3C+TrI8STghHaWVIM/DZ01Y
         BtBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ABy/qLaoYSbo2CZx4kP7SSsfUTg/2gSta85ONqhO8uqhEsmRFDp3w3HQ
	VYA5PG32AjeUJSmSu5CzlhM=
X-Google-Smtp-Source: APBJJlGlLEn/3I5ztydmUAJN/HzmJsLSl8vmv3+L1jSFL9xwTBDVk+fxmq3veJvtbcT05BfIctq/nQ==
X-Received: by 2002:a25:4404:0:b0:d09:85d3:4edb with SMTP id r4-20020a254404000000b00d0985d34edbmr3731993yba.7.1690613141372;
        Fri, 28 Jul 2023 23:45:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:154b:b0:bfc:564c:339f with SMTP id
 r11-20020a056902154b00b00bfc564c339fls1075820ybu.2.-pod-prod-02-us; Fri, 28
 Jul 2023 23:45:40 -0700 (PDT)
X-Received: by 2002:a0d:d48f:0:b0:578:1937:868b with SMTP id w137-20020a0dd48f000000b005781937868bmr3958382ywd.11.1690613140503;
        Fri, 28 Jul 2023 23:45:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1690613140; cv=none;
        d=google.com; s=arc-20160816;
        b=WhgwFth9SOnwpkC+blgW0zir2uNyCsiQTlH++ds4DkATzfeYB5gs4IS3oE1+7yLhGZ
         AUPYKGRZWHUXO9UxhMlT6ZgapY4ofzkNiO90iKLvOKXp0BxW/+plq5lAhS7HbW+8hbHG
         nsQ0Q4OPZ8zm70os3BcI3dqUe4r0Ur/Bd117H6anVjMj5f4NvQuEFwA8bT7bruQllrS2
         4tgwaBWiPwLi4m8/hVk9wBOI2MJjD2RF82DJLrUBYTanRc1fGSF1I/4oK4ZpC0e65+Ii
         FAW6x2HdyVBYJtXHIu3ZcjU3EQIUBpmMiCDPRtGWjdHi+mnee7hg07aXkqrJi7E/WERI
         4UGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=qGOhGAeloc0ER8DTdip8+6IYfd63nwLytJCLHZfTBZM=;
        fh=9Sf1cwC3IM+pTZwi7ML7RgkhHOFS2wOcp1S+Uy0EtJU=;
        b=wIK6KBnHjgsUjV+51g3oTe3AdG6k6uBT70wyeHl5uDeiGrX3PGYc2wTlZKo1/+JO1k
         Y3PFW7s7fytqjwY4eyXzgTXe1JY/hH0m5B7Zf08LCva7aWpjWKbzIFp1OyOWkjJOhKb/
         XuaAbpvKqUyZacRm0cS81pYyBLeC4Sclqc+h18qI7glIcy2NAxuq47774aHjGqkHpo1C
         XZ6ZamXW5C+T7OHxgog/k7GPZj3bldZnCmfXDdHHS3VB6e7tBhM6uEbc0+1dFkIqDYtr
         BpyTDsVDyC4yd3nVRnddfW3FL+1BbrOOFy+cKctPleWZJDmkyT1HZS77TDL0EJHL+nyM
         dn4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3llxezakbad8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.161.71 as permitted sender) smtp.mailfrom=3lLXEZAkbAD8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com. [209.85.161.71])
        by gmr-mx.google.com with ESMTPS id l21-20020a252515000000b00d1ff9255958si339515ybl.4.2023.07.28.23.45.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 23:45:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3llxezakbad8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.161.71 as permitted sender) client-ip=209.85.161.71;
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-56c7adba6afso1583030eaf.3
        for <clang-built-linux@googlegroups.com>; Fri, 28 Jul 2023 23:45:40 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6808:bd1:b0:3a3:df1d:4369 with SMTP id
 o17-20020a0568080bd100b003a3df1d4369mr8654851oik.7.1690613140148; Fri, 28 Jul
 2023 23:45:40 -0700 (PDT)
Date: Fri, 28 Jul 2023 23:45:40 -0700
In-Reply-To: <0000000000003ba9f506013b0aed@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000abd72906019a8b04@google.com>
Subject: Re: [syzbot] [ntfs3?] INFO: task hung in ntfs_read_folio (2)
From: syzbot <syzbot+913093197c71922e8375@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, 
	clang-built-linux@googlegroups.com, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev, nathan@kernel.org, 
	ndesaulniers@google.com, ntfs3@lists.linux.dev, 
	syzkaller-bugs@googlegroups.com, trix@redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3llxezakbad8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.161.71 as permitted sender) smtp.mailfrom=3lLXEZAkbAD8tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
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

syzbot has bisected this issue to:

commit 6e5be40d32fb1907285277c02e74493ed43d77fe
Author: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Date:   Fri Aug 13 14:21:30 2021 +0000

    fs/ntfs3: Add NTFS3 in fs/Kconfig and fs/Makefile

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17a1cbd9a80000
start commit:   bfa3037d8280 Merge tag 'fuse-update-6.5' of git://git.kern..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1461cbd9a80000
console output: https://syzkaller.appspot.com/x/log.txt?x=1061cbd9a80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a4507c291b5ab5d4
dashboard link: https://syzkaller.appspot.com/bug?extid=913093197c71922e8375
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15b8869ea80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=149e6072a80000

Reported-by: syzbot+913093197c71922e8375@syzkaller.appspotmail.com
Fixes: 6e5be40d32fb ("fs/ntfs3: Add NTFS3 in fs/Kconfig and fs/Makefile")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000abd72906019a8b04%40google.com.
