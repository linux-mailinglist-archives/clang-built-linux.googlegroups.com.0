Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB7NZSP7AKGQEHXUJ2LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id F25A82C8387
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 12:52:30 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id p5sf8843584pfb.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 03:52:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606737149; cv=pass;
        d=google.com; s=arc-20160816;
        b=PvbZR7YyiSMwoFBPWjPTl3Ine/MoxwwWLvNZWRqGuodrQHxGFSGIH4pkCIsaVGqXMj
         ZR7nj/Wyullc9oFL7RUX31p4YidSdPmAtGjDiNXF6qO81TTf5wVdBBwhkPgSTmUFnsrY
         9SEWPqCUegwSRghDf+zTN34Fe2EL/obKVwruWxbFRxaNSZysL7SDylDmmBekYpkGMx/B
         HI0ciQ6QPke/lN4HhTFlyl/crg/mtAoEh9MDQe0T70C4ikg1439mgFARSztRgZETtCzX
         qJjB7BMcYmifjfuC28ujyTir0t9SEWAfzIsU5dpAnlEIukx5dwyU8IWz21hiZFP/G305
         Kw5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=d43Bw0X6uO7XTAq2i8PLcPz7ui86E6g8RDtHZYB1Y+w=;
        b=l8yjCNtgMOcLAOVxxsmtybul1v6H+Rru+iH83cmfuOMzHfdXSlyD2yTYIUZxHu6Umr
         8ej79Z6ZdUhaqRhCBb4f/i5675fRn2ReMKFqLQ0nftnobjqOTsyDqxXwIW26DR6Y4k08
         uAy6eFoIHqXDHAEFTUeIh1QUCDrYLws4gorffsgwEC5PytajDQTQjMifGwDR4+8ADzjL
         PuXFx/aEGha+LN2GmF7CdWvw3AUqKpqeKcQADZi6b3Wldc52uWSNRI5oYa2g3hXnuGV7
         dq6GLPgOAJfY+gZByBDUqfIrxDy2e5sF/wX96ZrBQbf7OCe2SBfkQp9m4bNq7gffVYD+
         MXhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MnNpDy1I;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d43Bw0X6uO7XTAq2i8PLcPz7ui86E6g8RDtHZYB1Y+w=;
        b=GBioK2DBJuidn9x0aV7DW6ybSCi9t5QY5EFbR8bG1Fn86FYB8fsDC+sOzBQ7FtcL0d
         mZdFkRB7wx3lndgVMVXjAtF+Xg7DBM96XXBXyI/wsCEXg7XApW5S/h5+GAp8MmpVY48r
         0gma6IAXkuIXytImq2LWwwjU+hs0E11u5jIDOaxQo/BhBUtldxtB9ziGrKf4IJgdana/
         wxxDYxANw940pi6XNZHCdXOaebuPCoYM8rxcQBJdsyJbQMTwTTLCKiG2bBs+Qpi3mvic
         qxXvmJgF3dQoNNUBdt3EOU/JMtBJ5mhFKSgkWnQMMUp6lSN+lS3bAMLTVA5PcCf/b6nJ
         ZYmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d43Bw0X6uO7XTAq2i8PLcPz7ui86E6g8RDtHZYB1Y+w=;
        b=Od9fWTnwtQEAVmj3UfYVFC4LVLxWMtZmPnnmueBZlZNDyZrOWLVQ15iXdc92UzRFjb
         cJnsZyIhPdZEwrRAdEvDVnJdBp6LJYWOU7kk5rS8/ySb5MpkNfJHAhlqtYj7HJaBsExu
         k8HqKbgucz2tbWBRD9vR5cyqw83nGYUw39qgKTflHsAAz0RgcKvyzNms30x/6DpECwHU
         E9eLXd9wTYbQl4/izPLvyRJvq/gmsvGK2hbsrY83zgvcR7bhLOHxdiYCb5MIaBVHRQyR
         0KvTgLw1Y47ncgCULDJlUtB/D92B7T7o7Te7Ksa2SvmWRjqIV/iu2Qx6z/AYnYkwdETS
         13dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PjMwyei4JeHga0aQ0ktn3vJWCjfd223DqCXPTdfWaQCIdzJ5W
	nr9Bsg2i3bN/DEjGKb92cXM=
X-Google-Smtp-Source: ABdhPJwpqmeh3FCobmtVHRk7ECe6R96zQAFwUrDBksyq+pybvEWkGGgqpw2YIKcFs91hW4UzPGI5Kg==
X-Received: by 2002:a62:8c08:0:b029:197:491c:bab1 with SMTP id m8-20020a628c080000b0290197491cbab1mr18184693pfd.49.1606737149680;
        Mon, 30 Nov 2020 03:52:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ee90:: with SMTP id i16ls8199146pjz.1.canary-gmail;
 Mon, 30 Nov 2020 03:52:29 -0800 (PST)
X-Received: by 2002:a17:902:76c1:b029:da:2f5:ed5d with SMTP id j1-20020a17090276c1b02900da02f5ed5dmr18244651plt.25.1606737149039;
        Mon, 30 Nov 2020 03:52:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606737149; cv=none;
        d=google.com; s=arc-20160816;
        b=wtNoOPJN8XPa8AwnB0+L55t7xG3ZB9vhHW1ORVsbJiBbhca2ntZXPQYTMrKZ9I27eG
         qf3fZRyx9FXTQ/svPHl+/uf4piyPFKlNrnMcNBla4KjgDQal9kqM98/aUA8veHsFtowD
         ALj1x8UQ4PijZ5pQ+eyl69pJlFHVfCMMwAZMoDzSSp9xPGwHfpFK5KAG1Dj8miCmYSRU
         DuaVhAGRpq5ZZLYOOJAmKTsn59hcA1midfT5sjNVCkzis3kDD6uGRU2nqZJ2Y1JdMbPg
         ozGHIX1j8RM9jS6a3EpHoy9aP9+27zT8TCj5MzkQEE0/SRAzp/+CGNglplNPmKyEmKCA
         DVHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dTfyjpnLVc2P1USeNvt6Z+cV5FdPWWFJkhDm0N05ciQ=;
        b=mzcwrGiY9J5PKQoKvvyMEF5iPmPGWE3LbkAX6wsSd69tetwD7Za6RAax4K+HyCT+Fg
         HPkPOvcTV4AXi6FEsUMss+ZIw5ZWeEddvVzyUILfe0gVRc8MnPYg2LOAjLTyF3X6D2GW
         ao1j/b+iEf9RVGoWdAv07ztSE36LQkpUI3rt9GXeMokYa4Pf8zcyGKQW8Z5WwESQq9aD
         lobQ0CoGsL7TeJs2s6em+OwRkypuQvJSmhw1HxSecf+K9iV+ea0yjR61gj12amZtgbS2
         UCU6RP+1fGwOQOe/idvMskAVVAfJrwiNLx1B8hkFFK9cxILm9n46rhzAQRqcUkI+yjNz
         RUOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MnNpDy1I;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t126si903356pgc.0.2020.11.30.03.52.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 03:52:29 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C24982074A;
	Mon, 30 Nov 2020 11:52:25 +0000 (UTC)
Date: Mon, 30 Nov 2020 11:52:22 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 14/17] arm64: vdso: disable LTO
Message-ID: <20201130115222.GC24563@willie-the-truck>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-15-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201118220731.925424-15-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MnNpDy1I;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Nov 18, 2020 at 02:07:28PM -0800, Sami Tolvanen wrote:
> Disable LTO for the vDSO by filtering out CC_FLAGS_LTO, as there's no
> point in using link-time optimization for the small about of C code.

"about" => "amount" ?

> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/kernel/vdso/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

With the typo fixed:

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130115222.GC24563%40willie-the-truck.
