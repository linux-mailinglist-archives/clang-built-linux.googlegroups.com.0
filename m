Return-Path: <clang-built-linux+bncBDRPZAGFRAFBBOOKVCDAMGQEOTW2GFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 3207F3AA127
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 18:22:18 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id j2-20020a2e6e020000b02900f2f75a122asf1467614ljc.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 09:22:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623860537; cv=pass;
        d=google.com; s=arc-20160816;
        b=BEcp+CazmGVmpMxCxuxEu4MaO1ZV8En9LpVFxi/X4ll80horofEjsIaiLjrqabG3lE
         LFOkc3vwDo9qz1iurR8132+MRwEfbKm4fw1VY0fXU97mo2UAWwYaVmsupyclBGpBg/VD
         OmZ2C14WBkX1jS3KhYi5e+juZJ2R3j8O6OcO1H3oKNBDNKTKQfGyqQj66Vk8L9wjonwq
         DCIw/EoK6GmkurwDLVAObADrlte9vYh9hhAOO4oAc/rhFykLc2xN/gXC7a5vgaL2nkpF
         6SKPCzJLVpIGc7T3twRvVh0AZ5HkNfLvebuHoNf1Pn9mNXCiK7sEt6Rjycmty39meY1U
         Fh1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=SzjsnD1ptpc6HyEH68PmG1YkLsUZvVHya7lXyTA9m4Y=;
        b=0hHh9VIywMP/PGJi0Kzio0g3ijhN3Lu1907oMvb0hQgMZCZ0F5A/qNw8vTlnW6s7ps
         JFmhaqPI0jZT/3UmiVGccGGxOS5ZlfOx0NF7SPmCz31YTnCsqszUvsrrmFyksuVEXo2h
         2zNH+7T3gX66CIKif0D0jz+4zq4UrljlTibYabJAaLSO3Ns1ydt/2jqsEdd0TXEtGBnG
         jvc44lVMSmvVCjcNj5QEv1NODEkxIdXnaiUYSjfpm4422zWNJeLcytu16E9BwKyfkszT
         L9f6knv19Bqjml+SG7p4NEt8mPOwcZMLflVaXcJmmwngZqyKJtD6LFtlKMxaXnfmAYxJ
         WlhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=agK9vagT;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SzjsnD1ptpc6HyEH68PmG1YkLsUZvVHya7lXyTA9m4Y=;
        b=G9LGDLCmwRiPMiJqUd/S5WRRnsoV9mVUSBZ69unqtR8E6+UZpRtmh28IuGYRUHo27G
         Qi/rKJ/oWvsXYCV8hpk3fAht9J773sIn4XUExp6BG4Re2e9kLG4OJPY9l3ZTepvbf7Qs
         V+ofFH6C+Y5osrJ+xKCXLqf2NJy/0k2Ks73JJtZ1WXGG8rJ2k6HAiTJVu3cCsb1IxeRw
         2kiAq2bK/yS8PNZ2Zl9cH7Bzfcqi0muayfb6sF5+KDhaIVgw5CzqByxC7S/6Sfq3D9aM
         ZqsZ1/7EoHSZvUC3ZfK7lrMl05/nSCgsEtS13jTsbxzygPwkQUgCIPXOPVzuc3TOsUyH
         Gx0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SzjsnD1ptpc6HyEH68PmG1YkLsUZvVHya7lXyTA9m4Y=;
        b=vVqgsyLiIk05gludquwdICLmPDzPgudSYAhLyEs7QzStbOoyRHBcu+mbMKZVEOLW8U
         7PZRNDgBNp5NpJuuiQcbd+KkSN3JpwCtTiY4AzUwdIjCPVX2hiNTabnC1RylRY3rtSFa
         zbS1UPighDG93596FZYWH5cuNq5oZKeAFJHSm44RtJZ2sOI241fG0WjJkUaO2qTn09Su
         8laByh9HbV3VgX03IOzGWXxFzgBLOq0Kv4UjpGP7N21QaBw9GRiAl0BJzmzQz6Ew8nOz
         7YZHlnNdu/uuIma45EXa7+bIxoFKc/SEVJafAePAyEd32ew8Bycql2hAz3dqWiptBFzW
         Msew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SzjsnD1ptpc6HyEH68PmG1YkLsUZvVHya7lXyTA9m4Y=;
        b=EAsNmJ+H/diSIb+9lHpe9gjreovdIrM0bj+77fqS6xR1/T2AlsefR57UPGszi1QmEY
         9jPg8hUsmpuHCi7plRjvy1PGprbwwao5rLRRnr0HY2ZGrVVXOOFhSnQQJJHJnAdAY5/o
         1Rt2/CMGfe1fMe4Fr4+Lel1SkhyyFv9IvcT2F1gIy0yRTJeiXr1ViR0wF72I6aO7x7B/
         f6IH0F0mzTS5h4ebR05d6ik82n0qzt1oUbZwWsER9WJcxGYTb+gTowZtvRpClctr50iv
         21TaviifJLN75XS2K8AO/3Z+kjV7PsmYVj2eBkaBzFGSaeYEnJ4J02Z+CyrwPCYZ+0DG
         RR5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+pmkihfUK5uJRZDtVRur0wgX3cdLiXAaigUIc7KtZHmtc4IC5
	Zi5QZuXRAd09aQEmjkE80ks=
X-Google-Smtp-Source: ABdhPJyx9odl8zgbr3NvmBksH36S2Phfu7eNI/j160h2N2oBoByI2CEUoJvXgksmHxa2HES3LXGsNw==
X-Received: by 2002:ac2:5d27:: with SMTP id i7mr343088lfb.447.1623860537664;
        Wed, 16 Jun 2021 09:22:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9e50:: with SMTP id g16ls749702ljk.6.gmail; Wed, 16 Jun
 2021 09:22:16 -0700 (PDT)
X-Received: by 2002:a05:651c:86:: with SMTP id 6mr543973ljq.403.1623860536627;
        Wed, 16 Jun 2021 09:22:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623860536; cv=none;
        d=google.com; s=arc-20160816;
        b=FEXczvIzJ2cfhZQ6670reCQ/Qy3OR5+kZIc1jcVR09OVcDVRt8VLjbhlRoGZSG11G4
         Fb0WHN1Wj+pS0Gy1jC4wGKkDuOwz1q0DGkixDZCaOuzc8Ixi4rlSPGAyNRMLjZCYghv9
         1NarBAh8p1STAUWdgHxYP6U0/JHTqNBoZr8eeNkeyEz+Y3tHMUWNGw4JAbk2+BjiSIoy
         VZysDQUHuMoDmR73QzYZANIEfUgZFRKETFnobokafVC9Cibc5EgfHHmoj5heU2KuYLhx
         MBJ5fdqxQu9QnhV6nA43ONM+NeW3u2K+JLIVE/WQKTQy3IfRKzZKOaKczoiyO+j3Qycv
         nVAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NBQH65s6dXuvuY4ggi3ViJ5kPDHnKKmF/5YkqcMeyHA=;
        b=jkqX+kUyv1rHixCx07K+0FWFr9RlfTY3Evp+uhd+NoNSgbKFmep1uDXR1+lTA1upoa
         I0ChZ7T04CIEkXFIQu6uQIwymXhOqRf9cExopU114kJ1GqZL9WroZtbj3yLF6SPnvFcc
         axO/3ofc14j3upDp/CsoX6fe5xbgOi4pimmnWeN/lPBUmyhPCv2IeUStKOMvsx+VjrfO
         Q3Xz+d/9wjeWTd+zocQTU1TnvphqM8YDvcLvLZZXQPFqWYC0fSL1rdY28m78BB+etzC6
         sjgCjOSG+wnQ9Kkza2/bjK98eao1/FF/Q2260M1W8gHYvTR3Xng3D8wGNk6qgfaGRj3X
         L4Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=agK9vagT;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id bn2si77150ljb.7.2021.06.16.09.22.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 09:22:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id i13so5249223lfc.7;
        Wed, 16 Jun 2021 09:22:16 -0700 (PDT)
X-Received: by 2002:a19:7d04:: with SMTP id y4mr341091lfc.201.1623860536422;
        Wed, 16 Jun 2021 09:22:16 -0700 (PDT)
Received: from localhost.localdomain ([94.103.229.24])
        by smtp.gmail.com with ESMTPSA id v18sm333032ljg.114.2021.06.16.09.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 09:22:16 -0700 (PDT)
Date: Wed, 16 Jun 2021 19:22:13 +0300
From: Pavel Skripkin <paskripkin@gmail.com>
To: syzbot <syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com>
Cc: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com,
 linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org,
 nathan@kernel.org, ndesaulniers@google.com,
 syzkaller-bugs@googlegroups.com, tytso@mit.edu
Subject: Re: [syzbot] INFO: task hung in ext4_fill_super
Message-ID: <20210616192213.1d75d8e2@gmail.com>
In-Reply-To: <0000000000004c80e405c4df1a2d@google.com>
References: <0000000000004c80e405c4df1a2d@google.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-suse-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: paskripkin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=agK9vagT;       spf=pass
 (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::133
 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, 16 Jun 2021 02:56:21 -0700
syzbot <syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com> wrote:

> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    f21b807c Merge tag 'drm-fixes-2021-06-11' of
> git://anongit.. git tree:       upstream
> console output:
> https://syzkaller.appspot.com/x/log.txt?x=165fca57d00000 kernel
> config:  https://syzkaller.appspot.com/x/.config?x=30f476588412c065
> dashboard link:
> https://syzkaller.appspot.com/bug?extid=c9ff4822a62eee994ea3 syz
> repro:
> https://syzkaller.appspot.com/x/repro.syz?x=17d19ce0300000 C
> reproducer:   https://syzkaller.appspot.com/x/repro.c?x=108d7988300000
> 
> Bisection is inconclusive: the issue happens on the oldest tested
> release.
> 
> bisection log:
> https://syzkaller.appspot.com/x/bisect.txt?x=1646b8d0300000 final
> oops:     https://syzkaller.appspot.com/x/report.txt?x=1546b8d0300000
> console output:
> https://syzkaller.appspot.com/x/log.txt?x=1146b8d0300000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the
> commit: Reported-by:
> syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com
> 

Just want to try this ;)

#syz test https://linux.googlesource.com/linux/kernel/git/torvalds/linux refs/changes/76/10176/6


With regards,
Pavel Skripkin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210616192213.1d75d8e2%40gmail.com.
