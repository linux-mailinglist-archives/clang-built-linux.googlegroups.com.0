Return-Path: <clang-built-linux+bncBCIO53XE7YHBB4NX3H5AKGQEXGMEKRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AB125FE4C
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 18:12:34 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id p15sf6659018oop.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 09:12:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599495154; cv=pass;
        d=google.com; s=arc-20160816;
        b=RL0LVL807CTuY11Kil6luZgFO+XqmDDaZKkE8frX6EtEHJweU+c91svofW5ERkW9BG
         WMTGX9Vyzypqm3nvCJ/tlg2wBpLkt3WrvOZd172YJuDT2FYXsyu3k4Wc6mK40+lifzRu
         LLfxkW8lBfIGkaiFJxkHMWvxDbn8OaOUnW7Gc9q3pIntMYt4FP/QsgGGZFi6rFYlCEPX
         nJQocz3ecoKBCn+zSblQLm9yO2jdfWNOFcrebwpdvhuFkQf/SBkw+F7s2fsHvKzH3l69
         U7JCNiFHr84D4lXmCz9FjZT6a5LhZX7JQSzDWLC+2lpzPLAnekMXW8+u3kFNU7/JP9lh
         P1Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=U5wamfxfWbhIzUeT0JZxBRHLwtAH78ZSrOrLtlJCXTw=;
        b=IQPtXQE0/0ZAMo0FKdTfygTZ9GIc3gPQVimvstUVXk0vei456hOj20Imtt7w4FHQOx
         LGDJ+xIjb2f05O5MHWpCjDF5/fSUcRIr0L4q3xy1btwxEMy/U+3BAXbk97F+fNtqsFS2
         D//RE0GKuNGJQiRRAYhowJW5Fsm6ETbUz87nh5YVR5OWr2mbekrvAK+TON1jExm/0Ohf
         f5APYv3wtNDalb507paBHDs2oLGJN40gGDc1/S05eIAprIL4oDN89JKYbfNUh4ZlYKZn
         IlsFqxlvt3b7nwMn3wf9L4kN826kqAW7EdTd5VImnRL9MnscBT4S7kvwFEQIshtkwsZN
         6Xvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g49FogxW;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U5wamfxfWbhIzUeT0JZxBRHLwtAH78ZSrOrLtlJCXTw=;
        b=db2Fd2UqBjkei07pKmwuVuzK9cUa5kECMQ8KhB0t5I3PuMhNsjuLv1645gpH5hkHfO
         6qr7JZT+WQm+MdbMbsaft1p0B0HkvQYnVf4uaILFSs8VGDefoNtZ6NvI0E+3lmD+nZou
         K0yV83HDYaPt+otF3P6McdVvaNH+p4a4TKa7TMzgfKzg5McDFQWLLDQTHR8EE6++hREX
         9rcojBlM1Ryi7dZxM3de7MiVT9JQJ7+kw3mGnBfVYDS3MYqwYDyzZ5V/BSbVZ/mgsskP
         Rntpol5dI5a2vmbr3AgCrp0PPZQaVlLO06zcouGYe6tb/28jn9p6ZEBMInsVADJu79CP
         BjTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U5wamfxfWbhIzUeT0JZxBRHLwtAH78ZSrOrLtlJCXTw=;
        b=KoENWcwu9sUY2Xh94gpVkEzbaGepRxXZb7JazEHpK3uDs5xX4h09HjMEadelAXvxVU
         lL1d1WZbu4bdOP9KZzcZqB4NfcAGDfGwn67/jteikkjcq6SJ8uM63k65wTp6wVOjgSeN
         +hbAxF5LtmBuTMGFeVcPZmFu0ONvSmYlajqP+pQL/INwsK4AbegEMVLJYO68Ifi1HeCI
         z4EAtzyBaCW1jCENNdocecCKcpWjPGGABktCAmaeX54AzmL0Ye4Re5/VKIOcnLpai6f2
         3HIp22+eo97rqm1SoRuMXMVm0KadrFUTiYKIksrsuK1/+8jDtprJEXXY3Mc+XatNk3gX
         eslw==
X-Gm-Message-State: AOAM531hwGxsHSxQ5f9/uqACRNA/NSMFOqD5ll9ymeYFvO57ZieXQjUf
	DtKw044f/LmjieUybCQY4qc=
X-Google-Smtp-Source: ABdhPJxk41GILcFSK/3NNmA66CDPKVHB0zcm1wXzozvI9QCNX/r535aBT6Gn9FaF+AfGsooOBpGdbA==
X-Received: by 2002:a9d:c44:: with SMTP id 62mr15443441otr.185.1599495153786;
        Mon, 07 Sep 2020 09:12:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3a07:: with SMTP id h7ls3713553oia.1.gmail; Mon, 07 Sep
 2020 09:12:33 -0700 (PDT)
X-Received: by 2002:aca:d493:: with SMTP id l141mr52149oig.142.1599495153430;
        Mon, 07 Sep 2020 09:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599495153; cv=none;
        d=google.com; s=arc-20160816;
        b=e/Z44ha1p/vyRy6bGBoO/dRRCBpzWqLdP/pDMLQwPe/G0CXmU/x8cBHa3NulPD7nN3
         h2jZ6tmlyLfO/vi2Y9u4vJvwOje9NI7/a8Vr8e/DD/sVRBcj8NCyaTPeWUitYZyN7ofS
         ltwU4KxlXTeJrifeQMamKcvkJ/nR0XevAM00smWB4Ff5m2hQPMNc6SQrXFOVnE8fOcKY
         46fw0q5wR7AsOaiqDNOngPC29lxR4NhPKyKGz2qKOupWInXYj9XDGQCJjZadtTVIWHTz
         GjGNjAm3hQ4RnRQDj9UDty3J67tuBbDuh+TrsUgg+RsmXbayNPEagQJ1PkE+sezPeExd
         xcgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=WvmZn600MofrCps3XWIGrVo6oOPy1OACJfE+3g8CYWg=;
        b=Hbx0OfkGLr3Sy9irk842q7lruLze4R6mFYfWFdocykz5qxCln9StSvRXoq9p8yYmhO
         AXsI50pa7oqWOGUpe9um6yuAlfPmQnY9LXp/7ZDGjmKcNpbQ0IJKyTLz0V1aq3bHUG1c
         L6vRMZf7MjcTdkcrMZDXqL94RFFAzSWb63mSRElFGVH9aANuanDdgjxf/OXrAGIYkwuB
         X8XNQGUyIBRnVT8Zdw6OeOsSMTd06B/Rtz7OND5/O80ymfxjlZ+2kUuf9XedyjBtpVfr
         kLDSXsqN9j0/QiAdk8xJnJEGZTll2FGJH4I9pG0XJFlKhBBiRCsoSZhn0pEhQlivIjQg
         VmAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g49FogxW;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id l18si252672otj.1.2020.09.07.09.12.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 09:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Received: by mail-qk1-x72f.google.com with SMTP id 16so3664993qkf.4
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 09:12:33 -0700 (PDT)
X-Received: by 2002:a37:6f41:: with SMTP id k62mr18933946qkc.241.1599495152873;
        Mon, 07 Sep 2020 09:12:32 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id o13sm10277412qtq.41.2020.09.07.09.12.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 09:12:32 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 7 Sep 2020 12:12:30 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/7] set clang minimum version to 10.0.1
Message-ID: <20200907161230.GA2149325@rani.riverdale.lan>
References: <20200902225911.209899-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200902225911.209899-1-ndesaulniers@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=g49FogxW;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::72f
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

On Wed, Sep 02, 2020 at 03:59:04PM -0700, Nick Desaulniers wrote:
> Adds a compile time #error to compiler-clang.h setting the effective
> minimum supported version to clang 10.0.1. A separate patch has already
> been picked up into the Documentation/ tree also confirming the version.
> 

Is 10.0.1 actually required or could it just check major version? I have
10.0.0 currently and at least x86 seems to be building fine.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200907161230.GA2149325%40rani.riverdale.lan.
