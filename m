Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBGVZTD5AKGQEBBSTVFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2AF25292A
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 10:26:04 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id p138sf1872456yba.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 01:26:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598430363; cv=pass;
        d=google.com; s=arc-20160816;
        b=C45X4M++Z9Qii+RW/FdVBxWStM2/cUxJShLUckooJX/9F7g+cJ+CBh2gzUmUeiPbKe
         8P2ERcprwDVFO7NpQ5GcO6vUuiJx9yQxXXulO+ktp6tx4+7XpAn/eX3cD0iRA4M+829b
         MguFmn0gFGp9LoVnQA8b9QEcY5HHxUH50Qb720eRGNIhoFBO4Bv6s+ackZCQzrMikpFA
         Vw/ZO/hXYvfGyFO3SMO2Kjo+IuYMF49Pyb1pEjvCM9lEdG6pfpOXQxaKuyyFUeI5eIKt
         xRRdpDEpSF5a+zga0X6+DNJlaje5TQdRs9VKo5a4rp2SZQdCEKEmVJ7gpRmIGQWQ34Hw
         Aq6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=B5Yof35R4jstaMwd0RNkUyGV83JExP2Tferm4Um7BGI=;
        b=GzR2BZ3y53VrPOveIThCZLZMark8tAmLU5DFFhxzLHr+rHWxvArUJcuOLanQuatKmx
         gb9/biNIySsBVka6vlaofYwaGnOqP2r7n0rCGkjkFy3PN59wqMgAr65V6olapVtLnja4
         6qbxqiwXhYSEiRG7wD1YhsHlH64KEPMfJHdw4FbGsG8E49mNpyVDsAybtg71rm8CkXwJ
         A9e4letfUbje0LNhJl7Od6WcbkYcChih71+2aE5ksJxM/zOm7h40ssHUSt/XiLrYkIEy
         HeH4KRowzNyli8TrYn+QjvUhNUQ2/fwL4A56v0gR9dnuY9hwPjoutexfz0tiKvvJ3PxI
         SiVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n8zUC52b;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B5Yof35R4jstaMwd0RNkUyGV83JExP2Tferm4Um7BGI=;
        b=hTAg7lR8sSWT1DZjw719I+tcwIXlAVMauwLqWAt1PzN8VdbddXbNPPhbxNINbC72dN
         S5U5AQKvIRxWJk6qfo49kAwZH0PRa8cGiylVhWaKfaS/CuIChauNED5vinzUjeb5uLpt
         FDqBWZ0wvE67qIOhAlrF6t8tuqZS7EVz2thJ2i12XlG1XEtf1V3/GqX6eyQSIjE55nAp
         Y6tu+jfcXyPvE1VnYHTLsJFTPKGaYe7LGGuca5260uY64aBfICDD8K7ddaaAiwAxEbYI
         05QbIuJfBUmv7pzP05lEt/JOzk53wCjaOQH1vARCzp0A33dpJ1BPszHi5NcWOdaA+VL+
         3UPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B5Yof35R4jstaMwd0RNkUyGV83JExP2Tferm4Um7BGI=;
        b=aTsTAMudCPblRzJXvZEiCrhLu/KHonMMZOGbgAiNDsOlen5niGXoQr06sdMOJltYqs
         0T0JHKkt6xQ/OdQmE1JT5MfZQY6uE+MXRb525HYW/vF8pV7PKYAfLNwHxyJQ6ufT+rDR
         GXrrmYk5SCRbVQFIvJJPfYdvdg0DlvL2qW9ni54okqvk1vZlE/lDIB83LOpWDYOersjP
         6ZbCISa4NlJ4fpF4sBsiRvCLk67ebEe2dUCy0VXs63laA/+xB405PE+vWQte7K+pqBb9
         ddNBfFb+GGENuEgGd0nB+cQkzuKAS1FbaSjmSsfHbzoiazna5SyK7QRdCzc15vT/PJkc
         wBYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Vr1L4lpAGPmEz3fHzDUpqdIZDVQBuVAs0TD7NJ33CyRVNPeGD
	Pe8cCIkErB+x1ZHAz8N+GyE=
X-Google-Smtp-Source: ABdhPJy/Pz+FxgC8C3QYtJbGHxQijLA3SjnyBFHGJy9RF2YvsteOT9DGAskAhB82lwmv3tnZpsMwXA==
X-Received: by 2002:a25:718a:: with SMTP id m132mr20180864ybc.299.1598430362806;
        Wed, 26 Aug 2020 01:26:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3c3:: with SMTP id 186ls598889ybd.10.gmail; Wed, 26 Aug
 2020 01:26:02 -0700 (PDT)
X-Received: by 2002:a25:d84a:: with SMTP id p71mr20852121ybg.347.1598430362435;
        Wed, 26 Aug 2020 01:26:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598430362; cv=none;
        d=google.com; s=arc-20160816;
        b=Ykf3tquU/f6JNNV6FIhdhvrYljGL1yczH6FGwCmLhARbyT45Dbr8nrmX6alfGJHHJi
         xvZ8kfXL46FaYxx5D3cBmjwtkeTTa6DGnS3oh8R0Iei8cckIQ/UWSq/BsG0jc7TAqhcV
         edSrfZhSoo6Fupwv0xcP+xcXHzTG56wMvCQ2vbOM5BPggZ91DYfwJk3UQeqcYwgJcTI/
         l6l5Lkfjk3JFJwm3cok4BbCKQHaXYyxftdIzGYXAVYepoXGQcC9iQ84zfeK+7WPBYNLr
         csuf/UE47rtSCi2dJt0lQHPdpW4FKV4sa0brMQ4m/M9hNmzCHKNMEmoYAoEHKkqihqBT
         HDyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NqYUPvGtWEG6v7nmVv1Dm/pzn3SAqPiG2+b90flx7TI=;
        b=tJTvCDdk38LvZlNRp6K3q9abDzZekDeFCHSGo8/9/Q5Re68XJHX1BW1hgn2Tu55mTk
         3A1hrYAmvxALH4HZO2ss12WQ6DYTufizzSXkW3hmhaf18FmE38zXKOkIwF/QKG5Gx42m
         jjgP+XBqvv0MA2NPksqfZ1bQHErsGuCySIvJAcKyOTdvLxjqlCmKj7irN9Egj8yWhRVc
         CzYFgrHKsBNx727FttUtR4IfEZYTs0D753SLbCxzMg16zjm4EEatmS3lxPOoXaehZ3ZZ
         2xVnWb7NxCNzZ67J5a8gSDZdlWcjS//zmPZ9ZAsvNkhNCsB1QP4YFMe+K3EtAMoZm+TO
         KKiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n8zUC52b;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i144si104351yba.4.2020.08.26.01.26.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 01:26:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E96E7206FA;
	Wed, 26 Aug 2020 08:25:58 +0000 (UTC)
Date: Wed, 26 Aug 2020 09:25:55 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Jonathan Corbet <corbet@lwn.net>,
	Randy Dunlap <rdunlap@infradead.org>, Theodore Ts'o <tytso@mit.edu>,
	Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@suse.de>,
	"Alexander A. Klimov" <grandmaster@al2klimov.de>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Documentation: add minimum clang/llvm version
Message-ID: <20200826082555.GA27752@willie-the-truck>
References: <20200825222552.3113760-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200825222552.3113760-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=n8zUC52b;       spf=pass
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

On Tue, Aug 25, 2020 at 03:25:51PM -0700, Nick Desaulniers wrote:
> Based on a vote at the LLVM BoF at Plumbers 2020, we decided to start
> small, supporting just one formal upstream release of LLVM for now.
> 
> We can probably widen the support window of supported versions over
> time.  Also, note that LLVM's release process is different than GCC's.
> GCC tends to have 1 major release per year while releasing minor updates
> to the past 3 major versions.  LLVM tends to support one major release
> and one minor release every six months.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Note to reviewers: working remote, I'm having trouble testing/verifying
> that I have the RST links wired up correctly; I would appreciate it if
> someone is able to `make htmldocs` and check
> Documentation/output/process/changes.html properly links to
> Documentation/output/kbuild/llvm.html.
> 
>  Documentation/kbuild/llvm.rst     |  2 ++
>  Documentation/process/changes.rst | 10 ++++++++++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index 2aac50b97921..70ec6e9a183b 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -1,3 +1,5 @@
> +.. _kbuild_llvm:
> +
>  ==============================
>  Building Linux with Clang/LLVM
>  ==============================
> diff --git a/Documentation/process/changes.rst b/Documentation/process/changes.rst
> index ee741763a3fc..6c580ef9f2a3 100644
> --- a/Documentation/process/changes.rst
> +++ b/Documentation/process/changes.rst
> @@ -30,6 +30,7 @@ you probably needn't concern yourself with pcmciautils.
>          Program        Minimal version       Command to check the version
>  ====================== ===============  ========================================
>  GNU C                  4.9              gcc --version
> +Clang/LLVM (optional)  10.0.1           clang --version
>  GNU make               3.81             make --version
>  binutils               2.23             ld -v
>  flex                   2.5.35           flex --version
> @@ -68,6 +69,15 @@ GCC
>  The gcc version requirements may vary depending on the type of CPU in your
>  computer.
>  
> +Clang/LLVM (optional)
> +---------------------
> +
> +The latest formal release of clang and LLVM utils (according to
> +`releases.llvm.org <https://releases.llvm.org>`_) are supported for building
> +kernels. Older releases aren't gauranteed to work, and we may drop workarounds

typo: guaranteed

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200826082555.GA27752%40willie-the-truck.
