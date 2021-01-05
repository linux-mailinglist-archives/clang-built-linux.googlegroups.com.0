Return-Path: <clang-built-linux+bncBDYJPJO25UGBB37X2L7QKGQE5U466AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 071C92EB366
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 20:20:17 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id v21sf233726iol.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 11:20:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609874415; cv=pass;
        d=google.com; s=arc-20160816;
        b=DHXW9QM01XLHMqR4tHp9+upbLZ+94OFz+DwGEcmu0bz2OLvXOxC1N4MhO6pOMyiBFh
         MGqWzvbj5Ds3dGD5N5biwUTUYiORiObJHDYeUqPwBXqS1MLkPoXdNIOor3O+6vmIUyyx
         8P5gkJKcZmpsuYziLt4THx8ZVscx0b/jXC5Jgq0d42dy4yaax164wbriVpvfh+gVf4tA
         8aiKTM36CE+mafZP6M0aJanqlGK4HpHDwqjEEwN2qbUmk1epmNs/5h4l6m3OW5se4vRz
         vim3flS+bWjkOk/OL7Y/+DFhQtl9XA71EW/F3ea1ilW6w18ZbY4WzPSgFk/wpsI2iMLD
         Bi0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CXEKjVbaiU1RyQdagqwqFQqRbnb2sRgbtPBwgbvXiDI=;
        b=RBwR6nfyXnajyBHCFL+wNBFLT1nTPLu+c+x4TpDSqC6jM/mo1tK/mW5FEKHbbf7XYC
         /iAOb/iPOnpYc/u1x8f1V2eZTjVNtfMXg/pDU9xOSoDXWvUIZvPi5KC0Z5kXpVZ1j5KN
         nXDiiroRIEhc80olSycUTVkesCkedyYwYJjZUHNwaZbP3JPTMSrKmiJhtrPb7gWZ4CVe
         aMjYFu5uyTIS5dHJ25r+ERIXiWmcab/a0wK8zKRM6EYR29XrEkGJkrmZF7lDza/+GchS
         mXz1cv61e38Sd0m6m1PnqyzMoktZZfPj/3xX3PELbUi1XEJ1WXPYySSJrygvMc7r63fr
         hEfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TLy+Uq5R;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CXEKjVbaiU1RyQdagqwqFQqRbnb2sRgbtPBwgbvXiDI=;
        b=jUs9Wjy1FqpmpSXEEIQKCJOj01itx8rUc6Tylza2JOTykR/TJSRmj6H68muCHfgRxn
         r175sSglhxNuFUM7KS8XACzevvVmvLrHcw5XOSpg6nj0bLjC/llyoNgO/QMAw0KJ/x/Q
         ftDPok5sl9ygVuAabGc92NnH7cd1OmYq+PFtWrSnu7FD9V+20id6JLzCI8t1TZ9A+6Ie
         pEL44kk5es5cK3yR+aryETAG5w+K2OXnxDv7x8RKWotIKFY3Kr7uMRVGgE73F9pQELJz
         AlexZ6k6kad+Uh7FtqVw6w8BDAjrPL+JrhY8QxHsHp/uJ6qyf6/bgsR+8jttkOF6ym/x
         qMYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CXEKjVbaiU1RyQdagqwqFQqRbnb2sRgbtPBwgbvXiDI=;
        b=H7pLrrGE0xFzf3eOk+GYr7gUjH+upA5Q9bV6B97WSL61qgn2qxmP03WStmExGYC9CY
         NqCsahRR/1Iltb3ez1Ys4nc2k6p9OnNecDRm74zRQZYFT65fQwfgNeFtIqkBp/jG2e0q
         ruLbw47NScKDaydpG+jMpK8DBsTSZk2rfEydMNMHm4B0bnOSdvD3lkrDqFj8vkSemMzK
         DJODPLpUGNUYD8lSeVKUurvNaHupACDVwz587xHtzlzEQpqOWjxUSc4qF9QQk5xRdpW4
         VWkYn7voet8QbmatinUjWRPuxQX6e2gUh8RR1MrOn1aC/YAhgi61tdr86IzQKrxn6GbL
         6giw==
X-Gm-Message-State: AOAM5338ZR2VYygVwgRL4glq2thiuC4u2XdNgPEdgpjsuma9J7uWVuHJ
	3EUXDf9LDiv1+u9iyFsgkPY=
X-Google-Smtp-Source: ABdhPJzDhEN0WrAk+j5JZlrR9P0kQtS/WeNqEt7sj/ADB7+BJglW2bp3amJ18LwF4XTmjb2lVjYL8w==
X-Received: by 2002:a92:c206:: with SMTP id j6mr991186ilo.189.1609874415705;
        Tue, 05 Jan 2021 11:20:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9914:: with SMTP id x20ls64211iol.7.gmail; Tue, 05 Jan
 2021 11:20:15 -0800 (PST)
X-Received: by 2002:a6b:dd13:: with SMTP id f19mr492371ioc.74.1609874415157;
        Tue, 05 Jan 2021 11:20:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609874415; cv=none;
        d=google.com; s=arc-20160816;
        b=MI1Mou3pQiGt79Ep27aM8C9lom1gWcFL+oL0UIrOja7HTXQeRTW8YqOlh1EC4vKNjb
         gicsCWCSXoac1mKuemdovmljgxFOxgjN4TBLoLcZoE70bnc8ZHCpHXMzqu+p9QEFUSMu
         GBBwKliTDJIMTxQ0t5YQtxRLC3h2iFRn/KC2JhzU7CcfSG0HKXSnxdY0R66qf5Hb/kRf
         zspSTbHeYEsEkUxYTjM5BWvnfgHxCrT8zlqH5Pcco0XQNHpNuhTMW7qRPesf1Xjov537
         jqr5RYiq5GKzA2x7W8ytIJLBgRlU0PPJeD7Q5j/eju0oUVLHyXV8Z/HTjlAUgKUE1eJO
         pbzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S8zBcNrIkM7fcucNIrcdourXpW+BamaiYpRPGV5/7NI=;
        b=qCmrd1q0UDxhPT6btxaT/NerbnGHVY0pW8taOI0gJmHLyt/UT/uQace7cc+m0Ob5N5
         l04g0U5CzxsbCxfPW0oLSuMNaf20IenQws+h6gm3gjou2a0+l913WOxUEL9gHgAauLVF
         zlM2Lzne0Xc/flqieoLEGYheMD8eYW7RichRtpPOtnnaiUqlgrHAZgN7z9/gZ/FzDaFO
         DIdWLKE3HI3rrirgqOMf7Rx2dsEz8Sgjd17AsbFbkiOwjfuMdFd0nGvRDuV3ycrp7tnj
         IYKGw/Rqe4gYq7CE7rux/a3z+2af2pZA0S3km6Ulu8q7+8YInnqawf4zp0jAMtmpY3E3
         4IHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TLy+Uq5R;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id r17si27734ilg.4.2021.01.05.11.20.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 11:20:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id b5so216595pjk.2
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 11:20:15 -0800 (PST)
X-Received: by 2002:a17:902:8541:b029:da:fcd1:7bf with SMTP id
 d1-20020a1709028541b02900dafcd107bfmr678193plo.56.1609874414643; Tue, 05 Jan
 2021 11:20:14 -0800 (PST)
MIME-Version: 1.0
References: <20201203202737.7c4wrifqafszyd5y@google.com> <20201208054646.2913063-1-maskray@google.com>
 <CAD=FV=WWSniXCaC+vAKRa1fCZB4_dbaejwq+NCF56aZFYE-Xsg@mail.gmail.com>
In-Reply-To: <CAD=FV=WWSniXCaC+vAKRa1fCZB4_dbaejwq+NCF56aZFYE-Xsg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 Jan 2021 11:20:07 -0800
Message-ID: <CAKwvOdkFpqEDvJ5b9wpwEhnOdh-YJ8GxCc33JcHXqNRDnO=RfQ@mail.gmail.com>
Subject: Re: [PATCH v2] firmware_loader: Align .builtin_fw to 8
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Fangrui Song <maskray@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	linux-arch <linux-arch@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, kernel test robot <lkp@intel.com>, 
	Doug Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TLy+Uq5R;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Jan 5, 2021 at 9:45 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Mon, Dec 7, 2020 at 9:49 PM Fangrui Song <maskray@google.com> wrote:
> >
> > arm64 references the start address of .builtin_fw (__start_builtin_fw)
> > with a pair of R_AARCH64_ADR_PREL_PG_HI21/R_AARCH64_LDST64_ABS_LO12_NC
> > relocations. The compiler is allowed to emit the
> > R_AARCH64_LDST64_ABS_LO12_NC relocation because struct builtin_fw in
> > include/linux/firmware.h is 8-byte aligned.
> >
> > The R_AARCH64_LDST64_ABS_LO12_NC relocation requires the address to be a
> > multiple of 8, which may not be the case if .builtin_fw is empty.
> > Unconditionally align .builtin_fw to fix the linker error. 32-bit
> > architectures could use ALIGN(4) but that would add unnecessary
> > complexity, so just use ALIGN(8).
> >
> > Fixes: 5658c76 ("firmware: allow firmware files to be built into kernel image")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1204
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Fangrui Song <maskray@google.com>
> > Acked-by: Arnd Bergmann <arnd@arndb.de>
> >
> > ---
> > Change in v2:
> > * Use output section alignment instead of inappropriate ALIGN_FUNCTION()
> > ---
> >  include/asm-generic/vmlinux.lds.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> Tested-by: Douglas Anderson <dianders@chromium.org>
>
> For whatever reason this is hitting developers on Chrome OS a whole
> lot suddenly.  Any chance it could be landed?  Which tree should it go
> through?

Andrew,
Would you mind picking up this patch for us, please?
https://lore.kernel.org/lkml/20201208054646.2913063-1-maskray@google.com/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkFpqEDvJ5b9wpwEhnOdh-YJ8GxCc33JcHXqNRDnO%3DRfQ%40mail.gmail.com.
