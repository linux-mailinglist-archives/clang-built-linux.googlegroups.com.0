Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBJVOS35AKGQERSCFOEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2D72523E8
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 00:56:39 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id y2sf202550oos.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 15:56:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598396198; cv=pass;
        d=google.com; s=arc-20160816;
        b=CHEApE8gCGGYGBufwiqmCL4HFxatHS1NIE+IUQo8AwSST/M+cqthcurmRRf+vK9DHI
         yez/vCq+ug2gkBqCJcXJjWkrHCdgYEP38ICQSP+bs4XAVPBuo9tK4g57Z5dDV59P6oNt
         AnlgBzOTBboWii5Zq4Bg6AVLi+eiJoZuhUwoL+3qfYq7H4UcImoqsTVoAPwKqHOrIEq6
         tek45cC0wpvlR0B0UhnrJqbfnTuI0OkOrZEMHlDzDquArdr2oq1OCKQ9sIcoIWDv5jfe
         WTMtTCuUK+A98qu3W/WnchCfZ1+wbrOIVHBp8Tis3adI3k/bYpu+lc74b8kU3qWtnaHf
         qA8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9UEPPTvsFcChxtlFV1eXHP7tpb//ye4jqShe4wgDnd4=;
        b=ySNMvDboGMcDOzGOXL6FkBz5X+SWZkSUUkMeOE97was5STx/a0w/GBjABsOug1SWFj
         9B6PjmGBWVyDpfSxJgBouE3CmYDf7IukI5bbHhj35XN0aOAh1EQdkBAMdg++0GFRB5eD
         jhibhdD9zRRB1PqD0Ij9lbmwxI85qQcHIIGfe+o4rs/vUBQCVA6aeRtVesgJtXLYpxzc
         Ujx3fbNTdDszYHM/dhMIHyAlButFU/7/A8p8duojYcsEvwnpA9vHHnH1QTWClJXQHpw2
         rn6zzCG0hvzSj6Kf9+mxNdMf5FRz6Tm3ILTUpuFgYc6gmNiFy06k8W9kTXEFEWs+Bj2U
         T8xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9UEPPTvsFcChxtlFV1eXHP7tpb//ye4jqShe4wgDnd4=;
        b=epeLj0Pk/gRwiJvtqSoQ52Way3mRMNuZ64DJHrMIw3V6hh3jl/9yYi5lYjwgDIfJzx
         QMObxXE2okxFcYmFycG7D7gNKfjIGKntmSQUWrEZmNiCn02SAIw9cpsQYHPANnmPLAqt
         oXyebILgBRo7qdeDS0DyqJth+wPM8420Pf0MmfI7OlleBNWoQjy0+SV/7Hxkc5MAw/1f
         qGSVBqpR3VwTp1/dhN5F7Ygw/LxnaeSlfMVLpvJ3wtEtC7ux4xCbPsz0q9RQ4r/ccjX/
         G/BuJcJzG67X7WORgK4b24KrDjxgepEwJgcSrFMrmLTGEEgTUaU/sqtEeh5TgA1RSH3s
         5eDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9UEPPTvsFcChxtlFV1eXHP7tpb//ye4jqShe4wgDnd4=;
        b=GsRHxwCwKvVh9cYVLsyI0EFM3RfeOTDMrZgQCJaR0BVhzX8M19S2uLZvjBeip/Iln3
         awdKu+f+5hSPf/W9tTNUQN4cmO3IiKu+QqyQY3rz7tXyjVk743JY3FKGCpuuwJW0Js9z
         jp42/6ghqZvP57GWJROttRRk5BmIAqJdsEj3m9ep8Bpbla1HlGRyFT77513DietVYeob
         exSxzLuTqHNKdaMpvVhCUKXq+uEHzbAuEbwlaB18zqnuQ4AVZeHz0/FvMx+o+5iubem9
         ToMW484bTc9z86WUIBlGYhqp6phVerLd5thsTHIb+7mAgp61riDc9tktUNHeRkpRe/At
         sBBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CnXWj85uW7G/7IteMNQavdHr4WWt0PwlYtCTVf2pgCXDbt5E0
	rk6HBtKQjDzyA44xbDq5lrM=
X-Google-Smtp-Source: ABdhPJw0prNALoQlniDPumy+F6y5D2D4iwvjgXAGP7d9YTB7X9arf1ruuB/4WT9exdSXixOO6ZA4ZA==
X-Received: by 2002:a4a:2c83:: with SMTP id o125mr8637933ooo.84.1598396198164;
        Tue, 25 Aug 2020 15:56:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:545:: with SMTP id n5ls12074ooj.9.gmail; Tue, 25
 Aug 2020 15:56:37 -0700 (PDT)
X-Received: by 2002:a4a:6c13:: with SMTP id q19mr8796638ooc.11.1598396197800;
        Tue, 25 Aug 2020 15:56:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598396197; cv=none;
        d=google.com; s=arc-20160816;
        b=mb2zGdvrINv7VNfCWrhpX3BdEDVuUEvTPy1sX3ikiy3Q0q+z3VzpZIMTlsFKKsWb+U
         Qeypdhf3ui2d5q7yWrIJf89cwzpO0Ess0Y44bBwTu43TX706lEoXYwrpV10PNYFVHe3+
         dStAUy1u+OyyjJEipuaiq6/++CmYeY2XoTaG69CQpCR/t7LdiG0Z4jVNyXRZvJstBWWf
         wx0J+qZ0VdBX+2jsbuHFVHjPSO9DW8qIwVhCVsiFBpPqyOH+fMmaP1hn0gctiZn+6vGV
         sNsNnbJvkGNSeCfhSq4ICBTQN1i2EfOpCodta8hjudquvfk/kqIy6fjE5kTpt2G7Xxdf
         iqhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=JdsO8PDZyBj7PLHBV8nxwmhlQTUUNzS6dOki+U56asI=;
        b=XYxvx8rZdhNfgQSgwShSLLzfUmbII+Wr2lXIvqr9pqttqfr+47JyO0rtk2Ey5H9ykD
         QYvCysDyHogkAxhDMEUUp77FdOteCRJ64Q8d/FAZxiSJmefLTPdH/yioeiUCDUhxiB+/
         NGkMobT9IYyICtHEDpwfLSDDiEomkZ1/Wt2kiO+UhCsTqLX1L+s5EdhMPvuKBoruW6+K
         QTA1N/TSxRbZYkqDY3xx0sOvXA/hCVLSH6FqzmRFf4Ufv+fMHXyHFGzQcf6uvMCIpH6R
         v+m7+sD3g9mO008j0Q1nB+VIngoRuZfvtfQQ5WmNQit59X+t0xzdZ4IpnllAT2Q4qqfS
         2xxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01:e000:3a1::42])
        by gmr-mx.google.com with ESMTPS id e199si29494oob.0.2020.08.25.15.56.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Aug 2020 15:56:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) client-ip=2600:3c01:e000:3a1::42;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id ED26C2BA;
	Tue, 25 Aug 2020 22:56:35 +0000 (UTC)
Date: Tue, 25 Aug 2020 16:56:34 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada
 <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, Randy
 Dunlap <rdunlap@infradead.org>, Theodore Ts'o <tytso@mit.edu>, Kees Cook
 <keescook@chromium.org>, Will Deacon <will@kernel.org>, Borislav Petkov
 <bp@suse.de>, "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Documentation: add minimum clang/llvm version
Message-ID: <20200825165634.46a90fac@lwn.net>
In-Reply-To: <20200825225131.GA2702183@ubuntu-n2-xlarge-x86>
References: <20200825222552.3113760-1-ndesaulniers@google.com>
	<20200825225131.GA2702183@ubuntu-n2-xlarge-x86>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as
 permitted sender) smtp.mailfrom=corbet@lwn.net
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

On Tue, 25 Aug 2020 15:51:31 -0700
Nathan Chancellor <natechancellor@gmail.com> wrote:

> > +Clang/LLVM (optional)  10.0.1           clang --version  
> 
> Maybe it is worth making the "(optional)" a footnote like Sphinx? Seems
> to just kind of stick out to me but I do not have a strong opinion
> unless others do.

Let's not do that; the table needs to be properly readable in plain-text
format.  Adding that sort of markup will just serve to obfuscate things.

Thanks,

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825165634.46a90fac%40lwn.net.
