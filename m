Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBRW43D3QKGQEMASSFIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 337AD20B6C0
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 19:20:08 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id v15sf7071346pgi.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 10:20:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593192007; cv=pass;
        d=google.com; s=arc-20160816;
        b=NH8P/xsJTW/N57usKOH6uNhrpTmPVmpCxkFZ0WeJXkZL1H/1UyobdEedHchjoNLLCO
         pcERQye7z5bxNEf5vhstghGT5rjd4CbKIvy+7iFoxpOpce4VmLlugKih+Mx8vSV36txv
         eMPgPOBwZYbYvuaRZzYZulJ3zXKrc6wTw339El+ckIID8rZwr7oHdn11xTasCfs5mFPp
         BzRnnl5nMA7SONgNpFMMAqZVUs865MBAnwEIYuNmYJyk2pIgHPMNaRyOQ0ltgGb/j424
         dfYTY8MOS2stUK1j9gu4307/lr5kdV4t046tT3kk6w6MOhCdZWDWkdiCgGhle5i4MPq7
         T20A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=z1bWYNT0d336c9EKqCUqJUo4IdvQZOWNMo/o4v9bRP8=;
        b=zZ5VUy4Zs7ZbglzwcievS3zhHdeGQ9eLfHJpmmpsWWe/2TlKKVVhrl5jNWLTaE0T/Z
         A+XBcyuYE7gGjol3l7RyEQqdFuqiKuJVQdhtpMAqq1KmTZ3AgMEzaXGTuZ2uJAosBHvf
         OqHGy0zlVL3M70ymFw/3TECFTGxk0XfGgbqMlISxSZc5isJvykUprNR34eobjY7Ckpuq
         dGeRWQw1AhprxtLzAUbq4Ndy4+tMutiwpAgfiVrGRR99Ou50CV8LJERw8u4aOL+/8n5e
         DP2noxjJzIQRBBFq+1diF/t7AWmPMrxSyC7bheDIDeotYjWTCO006aYmapbfuDYofw+W
         5kxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z1bWYNT0d336c9EKqCUqJUo4IdvQZOWNMo/o4v9bRP8=;
        b=o/ivQed0tUWgR4QHqz2nkXClZjb/GsitxghGVEAFYwkgq3TBEqICXGwv1rNSRwhV40
         FUNpz4NSGiU5XR50rg6aEUylqkyW8lQ2+Kvz/C3PTr67Y2BWMcw/Qew2sVX11eGIh+ql
         2mVNwSPeSVWJxOZyKPFBgNl0iGn72zT+7h5jKVinQX5ozYhAwD7Xt+DsHIJNSyE4z7V4
         bS57a+tyIl6Du04szli1CSF3VZNjeVX0grDnNKr7poFjT9duXJHC3tKZM0wfDqVdgFwd
         Q9jDu1EigxAUx9Gszqge/+ap9gpAYONEigwVAvLVt2zfJ+NHq/p6PCC73VJix/rohKck
         v4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z1bWYNT0d336c9EKqCUqJUo4IdvQZOWNMo/o4v9bRP8=;
        b=ITGFN7+MS+BuRKM9WPth9Xb62hXf0Jf13TGag52SSdVYvnzX0sGF21Bxnly3BXW9kd
         tfM6vWQj10vt5rK5fMza3M5Chld/eRBK89qanE2YJdYbdDuj5o2RAfEoZn1pwVVPKZnQ
         Y4OxGlO4H5hI/gh5twVgFwKm+ek926LLU+dtA1dk7VsU/DmFs1tu1gUr0dzFIk7sritD
         Tik3qMbbQN7jmtdd2YaZ0TcxHB+PDyc0KYQBXxacpjIUcIZ2rt2Wm/kuKYcS70YKtBPw
         2qsAia5vD3F/G4XolMf7sogO0IQA0fZyjSC3FyJYvnUMJvGwLdqmHIACHthaOEZCmhei
         K2sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mWrlLO/+LPqx4gT6Osc56zW2VxK8yJaRWIPq/nUk7aow5Gn0S
	i1Oc5RYqnk1jcjhGJMYqbTE=
X-Google-Smtp-Source: ABdhPJzxymB7pw4RwHd4QvHbQusUFRApf8RUurNJk0LSY9NtQy9VEFoF6lFjyzYJTUGiTRgU+4BG1A==
X-Received: by 2002:a17:90a:260e:: with SMTP id l14mr4621476pje.76.1593192006800;
        Fri, 26 Jun 2020 10:20:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c910:: with SMTP id o16ls2701658pgg.4.gmail; Fri, 26 Jun
 2020 10:20:06 -0700 (PDT)
X-Received: by 2002:aa7:8ac3:: with SMTP id b3mr3939179pfd.45.1593192006373;
        Fri, 26 Jun 2020 10:20:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593192006; cv=none;
        d=google.com; s=arc-20160816;
        b=HId4QQ6xke9/M30BJWoKVLd+aMeU+9mvSELYe1FSsK0BJMLOlzfZHmUwG2xggChC5C
         t9cmnm14/S9kB4cC7UdcQ+hCnKKWnk8QoYqYqzfQwQ4p4CVj7tutDPxKaVBxHxBOxsYT
         GpuFJSMcfbVk2NkvC7y9WzmNkD94sEEeUZCvmVWYA4+hbvCn+HMRFLRV8YLviMPOZ4D2
         LEInLpkTaVW6o9Vj2Y6//DrjGsjOrEr/NjVsn18HDYqJcc7cXBUobEC76l2hMvqPaY2z
         QyAfWTbtKCZttZR4rDNcvNMUqFwNG8bdf7QTFczFNUxsWZ7RX9OKPslsbRTvOUYB46Me
         NTGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=DilWOS2ykjFQzBNkLrG5WStjfjF20EYXCBQ5Y3yNF6c=;
        b=kdLTLthlOkpOLkIeTfSPIOnRa6CbN/hhCyqGy2Hp3AcWEDXjpDRsqXTnU8DJlgzNTV
         cXod3uX7NM1+pX7I1TxpCrCmRRrBtxMItUvco4B5dkMzUVuNt05mcgQ7lJ29cyoVPRyc
         SYeahOjHNfE92jBXQNftfHUUQhLMbLigQOFWi8bcRUwVMgLeQJiDVpkKxc9RF8TNi5K0
         QAewHtcbd/114FImwiyaOKcaSyfN5mQJYKEjzJgzmn2P/CeLmQv2bbb6BC7XMqRhENGz
         HygAKHBYwO6yz5KiOCfpjIIMFs00kK9Lk5BYDEH9LIbJZMp0ss8HZ5RcefBSui8xFhTA
         guMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01:e000:3a1::42])
        by gmr-mx.google.com with ESMTPS id d3si583014pjw.0.2020.06.26.10.20.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jun 2020 10:20:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) client-ip=2600:3c01:e000:3a1::42;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id B79207DB;
	Fri, 26 Jun 2020 17:20:04 +0000 (UTC)
Date: Fri, 26 Jun 2020 11:20:03 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Randy Dunlap <rdunlap@infradead.org>, Tony Fischetti
 <tony.fischetti@gmail.com>, Chris Packham
 <chris.packham@alliedtelesis.co.nz>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Morton <akpm@linux-foundation.org>, Borislav Petkov <bp@suse.de>,
 Will Deacon <will@kernel.org>, "Chang S. Bae" <chang.seok.bae@intel.com>,
 Joe Perches <joe@perches.com>, Pankaj Bharadiya
 <pankaj.laxminarayan.bharadiya@intel.com>, Kees Cook
 <keescook@chromium.org>, Geert Uytterhoeven <geert@linux-m68k.org>, Jacob
 Huisman <jacobhuisman@kernelthusiast.com>, Federico Vaga
 <federico.vaga@vaga.pv.it>, Jonathan =?UTF-8?B?TmV1c2Now6RmZXI=?=
 <j.neuschaefer@gmx.net>, Konstantin Ryabitsev
 <konstantin@linuxfoundation.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones:
 Documentation/process
Message-ID: <20200626112003.50788c9b@lwn.net>
In-Reply-To: <20200621133630.46435-1-grandmaster@al2klimov.de>
References: <20200621133630.46435-1-grandmaster@al2klimov.de>
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

On Sun, 21 Jun 2020 15:36:30 +0200
"Alexander A. Klimov" <grandmaster@al2klimov.de> wrote:

> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
> 
> Deterministic algorithm:
> For each file:
>   If not .svg:
>     For each line:
>       If doesn't contain `\bxmlns\b`:
>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>           If both the HTTP and HTTPS versions
>           return 200 OK and serve the same content:
>             Replace HTTP with HTTPS.
> 
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> ---
>  Documentation/process/2.Process.rst           | 12 ++++----
>  Documentation/process/4.Coding.rst            |  4 +--
>  Documentation/process/botching-up-ioctls.rst  |  2 +-
>  Documentation/process/changes.rst             |  6 ++--
>  Documentation/process/clang-format.rst        |  2 +-
>  Documentation/process/coding-style.rst        |  2 +-
>  Documentation/process/howto.rst               |  2 +-
>  Documentation/process/kernel-docs.rst         | 28 +++++++++----------
>  .../process/maintainer-pgp-guide.rst          |  2 +-
>  Documentation/process/submitting-drivers.rst  | 22 +++++++--------
>  Documentation/process/submitting-patches.rst  |  4 +--
>  11 files changed, 43 insertions(+), 43 deletions(-)

I've applied this, thanks.

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200626112003.50788c9b%40lwn.net.
