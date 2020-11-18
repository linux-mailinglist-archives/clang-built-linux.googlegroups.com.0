Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPFC2L6QKGQENIRRRBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2B02B7497
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 04:13:01 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id c184sf156842ooc.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 19:13:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605669180; cv=pass;
        d=google.com; s=arc-20160816;
        b=p/2AAh1ey3MtrTyvbIPBYKAlvRyf845JyaMTCHpkP7ILk87Vym3PVrI4OBPf2nkKbQ
         rrIwV8DUz/1JvPOiBLzxY70avyXUYCaDvwYVuK1JlyYdVBpXtdu/xJsVx8LDM8FtH80j
         Vdfn07lVvsdsxOj1gpo4zj9ZjyT8Zn7HEPExNSKViQMTM9A+r6Wpq+Qf34xtamSuqIux
         IoeFqjRUbskt58fexCfye3iAXhMBAo032/42xCJ2rRWE5nCYz66VHVtITYD9UhzYow+5
         +EkcFDrEXDf7qPkrvZAQ9MQy5tkAWyuwOSScM3w4+kR5qZjIKo9X2y7T5GcAA7ww+fpL
         JPiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=m7/E5W5PQyXxnJQb9EfXCzJH2rfeRp9wdc6h5icMSGY=;
        b=mNjqPE2QKIGhyf+H9Dg70zmAixgJo9SqVLsbZEcjHOMbAtaXASNYiDwZ6hURTmsf+B
         YxefVqXXt+mqC7SDQoWIV30dHeP7S9YlLRyoQjoId4dhtwjV57nHijYGeAreYWxeYr4T
         +yw0jmzqXwKGrk+sdABpi3V3aC7OSFunWMrdkZYOi8e0qBwe9h9pRNSzFIbWTePgUf/I
         EUqZGvLjFmdFKWerYuFSEj73wWKxdLw0Pzs6DYgBPnCOaATcBDbsE5DGGYl6IKb3Jhx7
         GpiWVe1wqmg2sydFzI2bguxDdROQ+K5AJjKnXyUfG2OrLjkyQbXIgwN3P5at0VVO1wDx
         o3MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CWX89Bo+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m7/E5W5PQyXxnJQb9EfXCzJH2rfeRp9wdc6h5icMSGY=;
        b=pL3dfXKfwLZNIs5+YfYfc+GDZQMmwei5bB4n05GATch+6DPztusDmKPmz60Gfne2+D
         JN/59Ku5ae+2zyiGky8FjrVXSOB/yQBZa44oAhwn3++F/N8lzQKinYeOhYM1Tzw8MWWU
         v24nJidQ+5Wh0VR2KN13FM6VV8AjPZjpNd4RUNQ1tqiQEjmFBrH6JLvbmlV5niqNaBk4
         PknbyHu8xnzsyowetkOSn3BYv2LHDmC3Jj3lWbfXtcoWEWYmKaskeX0CpOT0G9I8xJfd
         0kTEm+teB9x/vZESYhekhUeEsLX/TQdcUSNZumg9HR7g9i8GLTqybUah4VOE24RA2uq8
         1k5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m7/E5W5PQyXxnJQb9EfXCzJH2rfeRp9wdc6h5icMSGY=;
        b=R7Ekulm/wT7g0jxBIGpfylNUNMiyOfwZLd3VWwfwpMvzbs86DpZd8Wq4HoKP47ctC4
         azzey4cGb7y/Fv8/ZclPsmZ1uaBB5HM46rToMG5+O1c7KboWYEYdHqinA+9rnkGlA4ZN
         0pQ86FVsxfOEkhAiiFqK/x7EtXjbm51UQ/snUEjF4XCt5PUYVU/inZvKmYc7bEym4iNd
         xfhTYC4JcUdm5DcHBGNZBsSR+WgARfclckG3tTr3IcEGYOkB1ycxWcpyAWbBLtDnPbHj
         ngrysWa4Srjb+OYNQB+4vK/CTBEUy3IkD685aa+tNsSQAHgr86g57jXpJDKWhjSkAfmw
         GJMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m7/E5W5PQyXxnJQb9EfXCzJH2rfeRp9wdc6h5icMSGY=;
        b=g5Mt4rv99ZGBv5D5ODuHJMXZkQ/B1bv1E1oqVnfGFqwf1UE6NxZxGxdo5uOR5V2fF6
         kvvPa2BnO++5gJmqW7muNbpQjn5LYwLeuUrHX92oMKtPWbwc29vE7dNNY1V2uDSICEQe
         yCgQXw28BsracARkf4oO+pVUIAOLWFBwFQ2JOifnrBb38JY2hv/lPdqXCZ/2kwc2k63P
         ZxjFwXYhBXUKt4jF6AtcvcUO+A8tN0P2V96LshaCGtyQQDpGFcnxoPlIPiCAvtUJUD4h
         5MZje9mgTlIcBR/+xD+d5AJej0RRXAxLCv6bouFAYuH02nMFkUqsM2VeAHxWkUd31Ik4
         3CqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aUAofi9LUVuVUwuc7lGhJRJw2FVhTe0nApm/e2v8rkd5OfBjn
	4hJ5oA1fTDrhj9C+y6oDUAo=
X-Google-Smtp-Source: ABdhPJx0+RnUCppztR3R6T9BTHvR2G4W8fneCHZTSI24Wqn+kRXp3yjDxXvbA39QC6AlpZgMlS8thg==
X-Received: by 2002:aca:ac91:: with SMTP id v139mr1407894oie.95.1605669180159;
        Tue, 17 Nov 2020 19:13:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1118:: with SMTP id 24ls4496937oir.10.gmail; Tue, 17 Nov
 2020 19:12:59 -0800 (PST)
X-Received: by 2002:a54:4590:: with SMTP id z16mr1508694oib.63.1605669179875;
        Tue, 17 Nov 2020 19:12:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605669179; cv=none;
        d=google.com; s=arc-20160816;
        b=0qwgvxV0NzbbgIl+QH4paURAqbIy3+j+Y65PzDAsdnO1pNl2Oytd6IJo8wPzijaCXM
         fAdIwYMAq1kBAY3KMfWT6kI4YMh+XCbHx/euWbCMPgkR1OQR+8mWx8MOUE9uElz+3dex
         9DeMQdwKHdCI3qUnaaM5rLaN7DyzpwBh7RaMWnZesWeEGIt8hAOnsDswLyYegF1zMaUo
         bOYCYDEuNL/Cpb5mjU75W1/5If8YDd5G8iM73++1PP9p5zz0kwzhBAyLV6Hd0mmUr2M2
         SGn4AqEWSCyTmn525IEfo2jKReWBscccO4TWKI9rzdyn+YSLPgiS9xW425YrTtGCxIwt
         /5xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HgvttKSz6Ny3sSVlQN/E9G/7G2kWLjw/Bo0sdK0fdRk=;
        b=YrCg5LolAaidUBk0rYXWZJRpud9DpdVCX0IX4/+oNdnjUmpfO+SYKIcT1FfdlaIiUc
         L0E4ALzN+3lYFj/l96XSRVg2jM7XL6KHU6dUqwT/o4Lk342JejMqtHgebOpbXhmS1UEL
         QEuEl20b5sE/XRAkeiZZCBtSLLQKfa2zTVbKLdSFQHqtmVn24nVwTxR0amlrFtPsTowh
         9/Aog8hYdAjx+9VaXKhb4nO2hpivw640Nk9Afjcb2n8KFoRKHAgn9J/SfhUw/DH+h9pA
         b24FbABV1FhcvzCGx9opkS5rKD7vhTnjLtsndFl2BY3pemMhUguIyk90Ku2Y4+TNL2jZ
         hm8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CWX89Bo+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id w26si1583966oih.1.2020.11.17.19.12.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 19:12:59 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id j31so630726qtb.8
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 19:12:59 -0800 (PST)
X-Received: by 2002:aed:2051:: with SMTP id 75mr2388981qta.332.1605669179405;
        Tue, 17 Nov 2020 19:12:59 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id h11sm15438617qtr.13.2020.11.17.19.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 19:12:58 -0800 (PST)
Date: Tue, 17 Nov 2020 20:12:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>, linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com,
	"kernelci . org bot" <bot@kernelci.org>,
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/2] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld
 10.0.1
Message-ID: <20201118031257.GB1001457@ubuntu-m3-large-x86>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <20201113195553.1487659-2-natechancellor@gmail.com>
 <202011171350.F95127F@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202011171350.F95127F@keescook>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CWX89Bo+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Nov 17, 2020 at 01:51:43PM -0800, Kees Cook wrote:
> On Fri, Nov 13, 2020 at 12:55:53PM -0700, Nathan Chancellor wrote:
> >  config LD_ORPHAN_WARN
> > -	def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn)
> > +	def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn) && (!LD_IS_LLD || LLD_VERSION >= 110000)
> 
> Readability nit-pick... I prefer separate "depends" lines to make things
> a little easier to parse, change, etc:
> 
> config LD_ORPHAN_WARN
> 	def_bool y
> 	depends on ARCH_WANT_LD_ORPHAN_WARN
> 	depends on !LD_IS_LLD || LLD_VERSION >= 110000
> 	depends on $(ld-option,--orphan-handling=warn)
> 
> Otherwise, yeah, looks good to me. With this and the other suggestions,
> please consider it:
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>

Thank you, I have updated it locally for v2!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118031257.GB1001457%40ubuntu-m3-large-x86.
