Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYUJ4T3AKGQEDVZEJZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 7570D1EE6A0
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 16:27:47 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id o1sf4731545plk.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 07:27:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591280866; cv=pass;
        d=google.com; s=arc-20160816;
        b=NxLnBEfPRIYX7f1hHZYo8+spV0l9i2MTlIZYmgxK5ZOqEhfEX2tA7fPRp6dVLxwPm5
         Upu65BXSaWVMBTJFjgwvqIFOsfODspD2OpQ7MmAayT9f4/LkpMTu6gQPB22VHea6vRXz
         gOf1Vwz4Z4nZ8tNEAVdPOHaUbTVQppTWo+F6DMtyKoKTQSELRUYXcWNdXXIeqwwyNhO+
         UveUsO6M/rhrI6c/jZmHZW4fJtoCNEaGYIBD0vizMQgp2iFe+4U9Mxce5Aua/xLXFbQq
         pmCSSc/h5t/LW2SHu/GjfZPN2cIdoSDOArZHrqHskItlY8iGSU7HKYyiOnIuTjpgRAfV
         6J6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cl1Qb4mjAQUBuxVrkMUfUWinh+cj2+W4AcmMcR2yYzA=;
        b=Z77o4xnVhXYdWA9oobmQK+n+JkIbUKhwoFjNpeoAQMttOCq3OIweadh2F0KvT9TJiy
         +syeKxtLiT6D4P59ICYFCktxPsgx7A/i9HI2zf93P7P7+JzPxDKBzWbc7CQER1yfXztZ
         l6l6cWX4Zp2qAMjkV93rORzd/IIiS77hNDaugd6Vulc1dKKhhh1yQdpPcz2gaGWg4Bhg
         L1JwaCNdQZInpSOiuLuL4kzbS5n22Ax3a58a5BgAeis9GgUa+Inh/aU56MIwecMhBedr
         c+bGopmHmr7d086dgo1sUzePR27aRUAWblsOQaVh0hcT7xdpkW/1E++s5U6ISuFqtamZ
         4UHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e7eITrZA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cl1Qb4mjAQUBuxVrkMUfUWinh+cj2+W4AcmMcR2yYzA=;
        b=iCVIutW0mPiqLZ0y/XSdTVT/2CH59zoJvmZ9LLjZ0O1s+ptRmA3Iij6llLd5FgdLJl
         sDPJVc0GSRnPBdsiA32AE9dCKmEF8w6/M3h1Z/5mjW2ti0lr1nn7ug04V65FfIHKtKEJ
         iP4fIchW/FbciFuOgsYh4zipE/a7hzge09dr1EfJTNARS05M4B/LR+aYmfVXAT6Yz4kA
         roncgmKKatKLixrdOney08Nbml7iDdfAcAQRxOuvoOdR+VnZfOQi/52hX4tdIDg9/dfF
         PXcIsnIazrU3Y+HX9mZW8UAH640LGjG/45LvLsTfDC785OFyLyPOmOxLGhbnADc4whmg
         DZvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cl1Qb4mjAQUBuxVrkMUfUWinh+cj2+W4AcmMcR2yYzA=;
        b=Y13PG/3FTDMeQoJETsvrkH09hS+IB2bdOTg5GLNPjaQLnzySh+UMW0lO4urChMSVbz
         HpVobfgF9b3VaWNfSGXmeI5BBfoRiQBcVQFbENFGds4JMmXCNwTTLMFhS6U53oPAhIpZ
         mECVuz7jMjnEQT+e6IUkjQYwJg38FcQ3TDjwVXFcOvVORoX8C4vFLW4gTjCfqs86wn/s
         GxFz1e+80dRES/3b8pLwo4ooYFqmUR6xkgmkyrnHAkrRbisbZoh65lEO0xgnwQeqAhH7
         f6CmHhNtJBHU82vzAC+TC066fiUyjPkSdwQU+j/Z5fHj/MIrlhdXmV+YzB22USiVSX3y
         88Sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Yi1+EfEY5XbWM/vtDhh1+TAIbVHV9AIrM0f4nbEInHxiJzAku
	o5ACAcAINKxgJNLUdYfymVQ=
X-Google-Smtp-Source: ABdhPJxqHmTGlBlff/MkKcKZagpfp7VYXq6ZET7vbsW+Fz12EJFbIPIFZag5/yumgS6cDltYkC6sng==
X-Received: by 2002:a17:90a:df0f:: with SMTP id gp15mr6601257pjb.128.1591280866110;
        Thu, 04 Jun 2020 07:27:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:28c7:: with SMTP id o190ls1683196pgo.3.gmail; Thu, 04
 Jun 2020 07:27:45 -0700 (PDT)
X-Received: by 2002:aa7:96b0:: with SMTP id g16mr4674492pfk.126.1591280865714;
        Thu, 04 Jun 2020 07:27:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591280865; cv=none;
        d=google.com; s=arc-20160816;
        b=QlFUUyo3BJbbDwfB3m4ekd392yfLuAm7eYRCeKnc7WKq8vrS53Mg2Nv9GD/10HnfvH
         d/mb1YcBVpZp7AlvsEJCXyMHWlU6m/1PDNlM1AUrRyfZ2Dqd8q4f86cGbpeexr9iMusT
         fTQDm05FLQiLPXt11TDObkFaMtW3VnqScRQMwf/jCOOr371+kx4SRhGfLqsAmu2gCE0M
         QU9MMpCfb4fKgdTS6DGQeyCcucjW4FgjckBjubXoF0qa+6de2/6exLZ+OqhPOsY71hY/
         vRRcWJdEUlqRxGByzav2J3qeevN9CCW/QrUTs1X5aa7TLA4WVC4QLWqBBgAMGUkkYAZf
         3hSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ELp8NKpDU/b4oaZzGkEuk3yIxekW0FfVsfMh0kEq3DQ=;
        b=rBhmaWTfif1pTuYz2/xuyICgIXM41D0ECTkwNP9pFsfbUaGaoO4n5rIRVoW2BN4eRb
         BvPpMfnnI1btLgnrdOuoYQdQWYqW8napOjBDy+LhTe7YZ9h2pVFUyLzBWVVOtdkbgN5F
         M3kNT4/iyuhCZRUCil7qZhmlzW2W302yT0NRrForgXlpxs39Qi/LxYpbaLsj+0y01Wef
         +XhAeXzE3MQEX1ShoAnHmitC6VifxtlIjXFaqENexbR8CZVSt51Wr0/4ey4ocUiMPohG
         RjqzBZN2oF6remZr7zbxDTaxEJ4f+kjVf1/IQU01hut53PVhI6fgvltjNblZWKs/LsOt
         lfsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=e7eITrZA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id m8si230915pgd.2.2020.06.04.07.27.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 07:27:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t7so2255994plr.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 07:27:45 -0700 (PDT)
X-Received: by 2002:a17:90b:188d:: with SMTP id mn13mr6391960pjb.84.1591280865425;
        Thu, 04 Jun 2020 07:27:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j15sm5944936pjj.12.2020.06.04.07.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 07:27:44 -0700 (PDT)
Date: Thu, 4 Jun 2020 07:27:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-mm@kvack.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 00/10] Remove uninitialized_var() macro
Message-ID: <202006040727.265B0E586@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200604033347.GA3962068@ubuntu-n2-xlarge-x86>
 <CA+icZUU4Re5g3rRJ=WF3_KiCEc3CUmbH_PibTunuK_E1QskEjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUU4Re5g3rRJ=WF3_KiCEc3CUmbH_PibTunuK_E1QskEjQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=e7eITrZA;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jun 04, 2020 at 09:26:58AM +0200, Sedat Dilek wrote:
> On Thu, Jun 4, 2020 at 5:33 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Wed, Jun 03, 2020 at 04:31:53PM -0700, Kees Cook wrote:
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings
> > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > either simply initialize the variable or make compiler changes.
> > >
> > > As recommended[2] by[3] Linus[4], remove the macro.
> > [...]
> > For the series, consider it:
> >
> > Tested-by: Nathan Chancellor <natechancellor@gmail.com> [build]
> [...]
> 
> I tried with updated version (checkpatch) of your tree and see no
> (new) warnings in my build-log.
> 
> Feel free to add my...
> 
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Awesome! Thank you both! :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006040727.265B0E586%40keescook.
