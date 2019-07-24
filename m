Return-Path: <clang-built-linux+bncBDAMN6NI5EERB2PH4DUQKGQEG33NATI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 6708872C5D
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 12:33:13 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id l26sf29966648eda.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 03:33:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563964393; cv=pass;
        d=google.com; s=arc-20160816;
        b=f0is4Evhgngds3W5wd6PtVQZxX5xRGL4E0NGFj5HRNgdnLC9DptOQAxhHaeC10ROQT
         UdDw5WmYx9/wntngQwORF1tiTprymie0pgHPAWJQAvDBaWdSbJJDOl98iMxp4kjwgE3D
         yI80jpxg1R52GrraVUpKlokD9HYwDyUDhkGPd1a6SWP8cMg9cjQavlxM2QSWp/hVmKZL
         gDgxsvyNJlKdEPYv/OhCaDOjYovNFLOpcAxoXxkS/njKQuaeBIJ9HzsG46Nf/SWLNrUi
         1orureQDyVHOc8vTvaHzOhhUAbkpH3QdLJnnCxHoYPDNliRHjBqRbZlne8JHsheLwFEj
         lqiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vVyVN/3CsVaNoW6EwHG63hNO8p8ewwZM3QNl4+YWLjk=;
        b=cXVkdZVfNDzjg2nygxpmO3xuZ3d8c8F8ELvX+XsTiQGsgq+44iseS4bChZ8i6jUbMp
         7d4z2DWR5qX/VpRmPIRlfMMUNY60uyUdbooMF8P91R4a1F+xFyBtIelSd92qktHNZla4
         4dvnJ7LdM30/ZY9bgj+tx81DkPowY3zYXF0tuudFsyhkK5IJzS7XPifwrBfv+wLDXDOw
         GFM+I8XOO453o/Ar1ISCUHVz77coLymqlDaG4U9KUna15NXCwdrPAg3LTagKkZqVgmvo
         vjtNYHyK6PlBjvFUgpoM9uQnc19j3FBgG5oUIEB8sZc8DF3Ooh5g5xv33isKfmVrUlZv
         eF+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vVyVN/3CsVaNoW6EwHG63hNO8p8ewwZM3QNl4+YWLjk=;
        b=b/C+nMcdNqzcUP+WFcCSxei0m8A68zaaIGswvEdmZbxfXpo58xrsSVHmK4DcUJt5Nx
         bdzD2Jr+r1W5c7NqMU1VythdXlfrIzmbXZkiJFUIfETx92tuMRcOLw9FJrLPjZ8/QRdp
         kqRUJBSVv/JwaTTIWhTVandtYknh4KUfyq7ENq3k6wrxBuikgFqgCIAS7PQ3Okew9ynw
         8ZEXRAu6eDdu3PUTX2uaftvdGvQ3GDlNxrMXJy7B2/dk4NpaxXCbixCW4RhoUFNYDE8s
         dd/U8O8Bs9/PcIu9xbF5Y79FIrIq2UmIEotPWpYk0I5aQqpquE+8DbOLLsr680pASMET
         NnDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vVyVN/3CsVaNoW6EwHG63hNO8p8ewwZM3QNl4+YWLjk=;
        b=m2u7iLO9TK9GATifT0gQGwrwTaSE61/0DHTwozrfHDSrwEaBzobsA4rg3TZbCWUIba
         khLBONyw3SNe8HiHMiGq4d2+9EVL2A203HTFURyiCknw0tkqIAbFNs61cFe+AhQqEmKj
         EVi+Z1iMY03jwhOn9tO2lopMnre7Lt2ZdsgV0szqtFC/6ow6up6JhlVjcAuzNjcRfs9Y
         6Il1RVbpVay68iAk/dz4+6/2AiHOQNOVFeY8ErkIbrLyrp8a/w49eSkCWcOmUVrbMIqQ
         JjpMv/Ro0eNLAwMt0/1Dj/KFgxetAV/p0GkuCkrfU21Nl+OSnzmT0NQos/1Pceu6sAAW
         ZlkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUOp0a/09xjSfnWtjJCoTVKc4qELTds+DvoL5P4LcAcWu94doq8
	gHFByWKuRgi9pYr3PsSl1k0=
X-Google-Smtp-Source: APXvYqyTO9wOedckTheyzAIxiBWhVC3xr/yjlcwZRsdgcE0s4um0RrutY2NkSJwh2EhezzBzbKRnRg==
X-Received: by 2002:aa7:da14:: with SMTP id r20mr70333431eds.65.1563964393160;
        Wed, 24 Jul 2019 03:33:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5791:: with SMTP id k17ls9697880ejq.5.gmail; Wed, 24
 Jul 2019 03:33:12 -0700 (PDT)
X-Received: by 2002:a17:906:ce21:: with SMTP id sd1mr63253738ejb.189.1563964392632;
        Wed, 24 Jul 2019 03:33:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563964392; cv=none;
        d=google.com; s=arc-20160816;
        b=E5RCJY/6z4Q9R8e+oogUDr1CoPRaWJPcxZnfPj4LcYFXxZkHBpsV2KSJyunb9/turG
         mpYxPLskbMYohHCafMQYZB0pWr26UFVLPhNDqMddJrI7nYUVW40+HDhGassxtyXfMx3G
         zmSGblF2HLiu/8xy/Gr/Y9MkETlehe3Rpl0AaA4mT2yF2oq5L3lmjafwqXEziFEV1X3j
         9sN8OTSl/VGnwocAldnSHPxFPasqikwIZ7Igu1zGwCEpmqNGgaSX/b7QJwWMxxZK6oXu
         asxKbyIzsmYbztoTXGoEX2Vvf1ZOIRkB8++gamMNvlQ+F4ElV4GjBhK0gcSuMs73EtZt
         WF+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=SWW5P9UOMC0llG3gXoo0VyJvbtyPMO3LDL134HIujGk=;
        b=bbrOnNums+WE5iSDOIJD5u5WpLhtor9w6P1Pb74iQOFHxS01rs3JqhmJOXsxD2Ww61
         PxJu9c+JZ8uNfnsKlBNOu2sci2B5RFZw4JRQX3gZH5c7+wz+Hu/5eqZpVdf9Rq63OjhP
         8vcSjVf5l9utCC4ieFU7uxXlkd2jdhSXxRE3NzWDawTl82rK24oSs9YNXL9rx8X29CVh
         ZW2g1TRot8TpuD1PZZySTJGuXKvYU+YsYvXTOG/Md+UwpttIxJephjwQKFOF/ljDwU+H
         hgY/+yPHv8kw475uzUa21qk/Cbe+gd9P5UVoiPjDB9NcX08LIz5yas4jIRQpGkHbiKB4
         w3rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id k51si2630655edd.0.2019.07.24.03.33.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Jul 2019 03:33:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1hqEa0-0004EB-AS; Wed, 24 Jul 2019 12:33:04 +0200
Date: Wed, 24 Jul 2019 12:33:03 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: mingo@redhat.com, bp@alien8.de, peterz@infradead.org, 
    clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
    yamada.masahiro@socionext.com, stable@vger.kernel.org, 
    Vaibhav Rustagi <vaibhavrustagi@google.com>, 
    Manoj Gupta <manojgupta@google.com>, Alistair Delva <adelva@google.com>, 
    "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
    Enrico Weigelt <info@metux.net>, Allison Randal <allison@lohutok.net>, 
    Uros Bizjak <ubizjak@gmail.com>, Chao Fan <fanc.fnst@cn.fujitsu.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Alexios Zavras <alexios.zavras@intel.com>
Subject: Re: [PATCH v3 1/2] x86/purgatory: do not use __builtin_memcpy and
 __builtin_memset
In-Reply-To: <20190723212418.36379-1-ndesaulniers@google.com>
Message-ID: <alpine.DEB.2.21.1907241231480.1972@nanos.tec.linutronix.de>
References: <20190723212418.36379-1-ndesaulniers@google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

On Tue, 23 Jul 2019, Nick Desaulniers wrote:
> Instead, reuse an implementation from arch/x86/boot/compressed/string.c
> if we define warn as a symbol. Also, Clang may lower memcmp's that
> compare against 0 to bcmp's, so add a small definition, too. See also:
> commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")
> 
> Cc: stable@vger.kernel.org
> Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
> Link: https://bugs.chromium.org/p/chromium/issues/detail?id=984056
> Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
> Debugged-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
> Debugged-by: Manoj Gupta <manojgupta@google.com>
> Suggested-by: Alistair Delva <adelva@google.com>
> Signed-off-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

That SOB chain is weird. Is Vaibhav the author?

> +/*
> + * Clang may lower `memcmp == 0` to `bcmp == 0`.
> + */
> +int bcmp(const void *s1, const void *s2, size_t len) {
> +	return memcmp(s1, s2, len);
> +}

foo()
{
}

please.

Thanks,

	tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1907241231480.1972%40nanos.tec.linutronix.de.
