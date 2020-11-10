Return-Path: <clang-built-linux+bncBCIO53XE7YHBB4VBVT6QKGQEXDOAVTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 204D32AE30C
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 23:15:16 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id t19sf8475515qta.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 14:15:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605046515; cv=pass;
        d=google.com; s=arc-20160816;
        b=nmx+mozsYvIKyMjPgEJ61UXPh7wSZkdn1a8CTUiqsZjMxoiQQwxIbOad8dgXnhT+jf
         g2qmn7tvYtUseQ56JhCT/5tkPbNAe/LzVXss5Z0w09bcSJB3FBtTVRD9rHcqse7nSqnp
         +pZabSfZTKZ/PcDvIkkCuxCd8+RyhhY8q1kNYD7fAA35Apx+KEHoBAVM1WB+1guCgMuE
         2e/c4jZ2MM6gaDI+zAMgTJyYSwxNlx7wfmfJVXyOavn4cvpNyVjnGDoVQL7E29PiMvMh
         5qz3hKwT/Dla5Qlgn6kJsoVZ/Zo3XhKr7dqg1VPeTsUQ3WUCo084M0RhCODLLlsRAxc4
         Y0dQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=C/dzaeXpQ9pXF4MwBRxNpcfZaKsJJjs44bs8L1lX+Vw=;
        b=d/uTJdSFXKhTQSpCMbyMLkj2bO2qpM/+e9zFvRzTfktnN6E4vN6K/VL4J6SoEiW6VJ
         pgHuKixmBj80YOM/yZqp3tfPTeA1lE3w39bQyYksratB5JLk5Nak5G0kEoeDqt4k2Ka/
         Y4A5A1BPPnZmIxd84L3YyhZHABYrNCi36df2jnHh2ca76WveTnf2Wf4QDZ8BuqgNYqKJ
         3OgbnzcbqiR9you4q3N+qFLtnn3+77VjZ53tPRrzyzn9bnANxpUQ5OXZQm+CulbXbofq
         swxX3NadNrdrwNITuR+DD6vpPbwsgvsWq6d/KrKSf1yTE1DXxAND6S90hlCGgqzu+Iwd
         1Wbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K/LL2lfA";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C/dzaeXpQ9pXF4MwBRxNpcfZaKsJJjs44bs8L1lX+Vw=;
        b=KZphZ8EgSQT0UbKl3hTXjQtIZkCGV+H4Z5OQjMiMMcsoaAtM7xi2D1pWcVxL04tWXP
         9RCvIOvkRBSTkwKl8K5WO9tO2cY8EvwRb/masN2osghuD67U5uvy+4PQhM/+UbAqQ24T
         MblCKwOlnTNlAw6/QPkNgIBNCFTeRl4n4BPiHcoBZyYQ4KZe/4eT7oFqybToHXFpghqs
         tAcI34yuUo2Y3hEFls3/eQG6cLTTiYPQuHaRZ6x2YCC+VEZnV5TvYqPJ/Z2ZDiWb1r+z
         gYPFtq5YAsxsaU/1zwXUG28fUoIs+owxWDJf07qcWNmN2MO+Wgdbd676ndQWO38Xczje
         EN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C/dzaeXpQ9pXF4MwBRxNpcfZaKsJJjs44bs8L1lX+Vw=;
        b=i1lkvA/6e3e0/BUxe7yaCDU3Nwteq3Q/x6LhkNeoES59ho5JaytHtT6PnJeDrOiWaI
         M7PmZK4JHvJxNk0/aVhbVTakT+Pe2SxGabyOHpIbwcndhGLUHJClaZzHjDGmVlos/TMD
         m3CWWs3Mqnh7ES9LpXNrv6PmUuxJpOLXywMG/PKAfjiSbbtm5Of/L7gh4bZhHmCqeliD
         8rCutjOOO4UmWkiQYiQNC5bN3ifNSVmS//Ja6KNf7QYyds8V/h6EpzlM6rhG47IRSf6Q
         YSmHB9DK5W+AnklDG/co6VUdGmdMZ6tOuDgJKWfulerB1UTf0chXY51KvpMESRZ30r9p
         XRGA==
X-Gm-Message-State: AOAM5327N5GYKrS0smD488yGBR/0o+9gbdlp4Sxh6qYvNeptuJSEf1Ww
	QcWncLjFrLzj6qn1ZZ0+0vo=
X-Google-Smtp-Source: ABdhPJzbaGtzWg+9TXpkGFfEdKlLrMV9G4lB7Yj5wUB+da+OP/ake/flToFrZ4B5akju475hAgHIag==
X-Received: by 2002:a05:620a:1453:: with SMTP id i19mr21696122qkl.457.1605046515220;
        Tue, 10 Nov 2020 14:15:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:80af:: with SMTP id 44ls3328630qvb.2.gmail; Tue, 10 Nov
 2020 14:15:14 -0800 (PST)
X-Received: by 2002:ad4:55c2:: with SMTP id bt2mr11683963qvb.48.1605046514482;
        Tue, 10 Nov 2020 14:15:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605046514; cv=none;
        d=google.com; s=arc-20160816;
        b=IE3gS/SLOhkCeJRwn+B9ikMPxT18ePUsePZNiyU2MIKqBdBWjW56XbsZ8WQmP4IK7a
         WlKljVHs9U9l9amCmKwF10ef9SXXzUd/zPiUhmFzWT4simkDex7HZ1z2Ic70oSHCFpbN
         S0/94DnUtyYLqm5M78ezEFENIGlmrvfZz2rOU63klLwCKRnYb1CPhe7gFTkVJeyh47mA
         Jdw00MFrhD3n5mXpdeGLzxN6ErCVvy5beamV/JhB2MRkmHn5sLBnZWhv04LpnaRaPKWp
         6nhIJKqC+7TlfdMkqOid3Q8pGTmtFHyvLf69MNsx6mNI404n8MFJToCqCAvy4RJfy8uy
         dabA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=uIOzI8x2X1SZGvfM2NfEeGZjOdYhmoI7amgUKQgpunY=;
        b=T3Wds4ome0/cUL7TCZhaRhC78v3sdGWilO2KpbWvfkROMSsUWa5KgXeW0OYqSONzUB
         Bf9gSvquwMc/tD/8rPQ1RYJOynykLaiKrxxgwyrV0YP5w6qL9IFktRc5IS0+pg56Kv36
         s9WNJFEmpX2O9BqtBO903FMBgpDfHDCMJAUukEB25mS5VP0A8e850vBfDvRw3Yk/fkd7
         WmEMXMrAtDiJ5IBe5wYscG2+6fUxbY3cPRJuiGD2ORZBt4w5lPxZEQZmVmewmn+yW7nY
         BgY9VBkClmyNHgHbGKqimqtiiWuHEWjyJGyyFbtxdev3x79up0SP15JBpBB3pX5IVCiy
         Eoww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K/LL2lfA";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id z205si17166qkb.1.2020.11.10.14.15.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 14:15:14 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id n132so12063802qke.1
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 14:15:14 -0800 (PST)
X-Received: by 2002:a37:7ac3:: with SMTP id v186mr21828124qkc.451.1605046514064;
        Tue, 10 Nov 2020 14:15:14 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c76sm189612qkb.20.2020.11.10.14.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2020 14:15:13 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 10 Nov 2020 17:15:11 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Russell King <linux@armlinux.org.uk>,
	LKML <linux-kernel@vger.kernel.org>,
	Collabora Kernel ML <kernel@collabora.com>,
	Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
Message-ID: <20201110221511.GA1373528@rani.riverdale.lan>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
 <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com>
 <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
 <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="K/LL2lfA";       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Nov 10, 2020 at 01:41:17PM -0800, Nick Desaulniers wrote:
> On Mon, Nov 9, 2020 at 11:51 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> >
> > On Fri, 06 Nov 2020, Nick Desaulniers <ndesaulniers@google.com>
> > wrote:
> > > +#pragma clang loop vectorize(enable)
> > >         do {
> > >                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0]; p1[1] ^=
> > >                 p2[1] ^ p3[1] ^ p4[1] ^ p5[1];
> > > ``` seems to generate the vectorized code.
> > >
> > > Why don't we find a way to make those pragma's more toolchain
> > > portable, rather than open coding them like I have above rather
> > > than this series?
> >
> > Hi again Nick,
> >
> > How did you verify the above pragmas generate correct vectorized
> > code?  Have you tested this specific use case?
> 
> I read the disassembly before and after my suggested use of pragmas;
> look for vld/vstr.  You can also add -Rpass-missed=loop-vectorize to
> CFLAGS_xor-neon.o in arch/arm/lib/Makefile and rebuild
> arch/arm/lib/xor-neon.o with CONFIG_BTRFS enabled.
> 

https://godbolt.org/z/1oo9M6

With the __restrict__ keywords added, clang seems to vectorize the loop,
but still reports that vectorization wasn't beneficial -- any idea
what's going on?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201110221511.GA1373528%40rani.riverdale.lan.
