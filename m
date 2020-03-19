Return-Path: <clang-built-linux+bncBCU73AEHRQBBBK4FZ3ZQKGQE5QTNWAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC0318B970
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 15:33:16 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id cg7sf982554qvb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 07:33:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584628395; cv=pass;
        d=google.com; s=arc-20160816;
        b=UUhfBg1R/fKD7B8a0mM84NVzpx1uG3AXis5ch4WyoB5dEQ7HAT6JJfyhgFgA3/jAph
         jbetr99xSCbzl2xt7nnuy5imNiy/8gt6G0LFS0CNVQZON9XCHagqaqT9MdCP1fy6MHxS
         uiSghT5JEINDTJXWOgxzeKEtSbB1xnRRcaxhjv4ZHn65MUlBLYf6fV/8J65zo9xYnc7N
         B6dYZCGOnvdMvJ/ENtpqhNdOkRlJYLIplyYQHulX9KImT1sNS/qnC/zFAPlCPKuKunCS
         lgOP0QbacVnPm2gNIwMXL34Fsxc6AzEJxEXbq97fA5ZoEo4//+yJRX5BzlGi4X1itYM7
         aNWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=w4IlaLrBtbcSy+TFTXLBkRu4TnVNUNnxMRCgig555GU=;
        b=va7gZIVcGJECppcXFfYQmaC5WtVVedKWfCL8ryGSvegOxf07Qa4VDWgfAz5FEzh3xf
         GkV3QA42mR+lYjCk2KrIWnUQDyRt52iGPp1tk7f/wI/rJ0xn1EbZfH5AEzh6dYOnL3Yl
         XVMusVUVEwQ4KLzjBL5QBXvdd6m9MA/+4k+1pK+W4jGONBRGRCEIrmig1Zglb/Ei3+1S
         CFG+74ozk3E8rF/aC/qLdxzThbhD8wBVxNPUyspd61qZq6r13EcDsaksN7R6gY9T9mYA
         wWSshkkPPu+js/rRSNbpE0oz8ZtbaAtjMzKR9JnoM1pc88JCB1mmOvqRwNbyuE+iAtXj
         NzoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=y8ih=5e=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Y8iH=5E=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w4IlaLrBtbcSy+TFTXLBkRu4TnVNUNnxMRCgig555GU=;
        b=RlnDekRtMrahK/ylxqJMIIDDNiMSxJ3TFRLyFlDt/KYdiSbIMEfGgTuMoQPaOT/9bm
         Dv1pgGrLQ+dWyburv2cW1c/o1I+09m5iQ1caaCYJdJdTZSqBFtefwKgTaqnC9BHmVhJs
         aAPRUKrNVUs66Pog/T8N1mzGP5Wtyyv+teQqnXbQLmzJEagUFrDOtOo7i9LcP7VQUGpf
         EFPMoRzI0sHDYpkksVmVrzSloCK+4tw9fDVKvyZfytJb7pTyFqFYv/0P6o50NJRw8TjU
         H/1T2swL/SC3+vMhxtWX64W3DeFryvHEnmmbd9TY2NI/iCkEsYsQILg9Yuhmm3eK3m3+
         ohcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w4IlaLrBtbcSy+TFTXLBkRu4TnVNUNnxMRCgig555GU=;
        b=OpJPWpnLmhqWpKgARoVL3GiZ6lshwbWO0GtL/mq02VRY1OHSB0BviTDGQHB4V0XzKE
         X48ByEK4Ml3nTY5FhHfukojSq8fP4WmYHzZhpgkGFceb9P+4w/PEZZlB+rOCrYrHKFa+
         vSGnIb/uUzr55vijLUtL4qN5FWOLZ8bSZ8e4i/HYzDG6Z/n6x6w6bMKW9cy/malq3B3g
         iTy67ifb6cMCPYRxoSLAFHKRvVzNzr4A3OkfeMoWOce9JC9PRTxIkE2rIle1C5pyjW9T
         slseVhsIuEMgVm708aedYyvC1XrtM9d8D2eZi7zuiDhYooUi4SNWX31CAF+veGuvmQmw
         GEgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0xtzfBwBoy+q0IjtcnTdGH3RbxT/eKWQN6LLrlhfCH9EaiZKf0
	ESzame4evmTWej0o8lMTgMM=
X-Google-Smtp-Source: ADFU+vtwPJjji6tFic8OR/+oQo68Lh9bgdiZuGLQczK8JgCYExik/aCGBWMCY31kk037L3Xs8qvFbw==
X-Received: by 2002:a0c:fe81:: with SMTP id d1mr3401711qvs.120.1584628395674;
        Thu, 19 Mar 2020 07:33:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ea43:: with SMTP id u3ls545673qvp.1.gmail; Thu, 19 Mar
 2020 07:33:15 -0700 (PDT)
X-Received: by 2002:a0c:a8e9:: with SMTP id h41mr3333144qvc.235.1584628395216;
        Thu, 19 Mar 2020 07:33:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584628395; cv=none;
        d=google.com; s=arc-20160816;
        b=mBj4mJ+Oy9pwfxhMRPYm8D7SRgn+0kdeRHLoxcoof8vPXqkOamIn2mPnI6xCkA+ohT
         LUs4jcanY/qBFd1MBT95oD5WSdn5qVogh3n+d1v1k3n8IvmPdbOB8zgpL+C+HyGte/zs
         Hye+E/n8WLOOg8WrYqmkDzXLPpJZI2R06D6j1tDEtJwvcrhESaKZA+Kz1kp1HsfN9ghG
         TEiOr8v88g7E6ylE6EQDT+FOKRZuPoNcfR9lVhfyB1wvPGCnyxH+ti7GFx0QaeI/QpM6
         D1i+K8iuGcjyMjLLSSS697A60H81R4io1YdEfCgeMX5DtAQ39C836SIInQlCChbCbHSH
         2PAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=ASYSkZbeNyoozGvZsao6YXwYAQf6HzBPGd+6GmMQPjc=;
        b=IeVrzrDpe6AADNX11oX1GAV569VuqkFiZ9oiKgLITIREkSPEKLpKZNXh3le8gZyuvD
         WosRIUPDBSfsIx92dj9z8Yzw9UJcmK1ZbL2wTNM02nijlbv2sWByyzwVGrDo+WKtCd4v
         xUo7SlYfnpah6MK74geFYtcsPoG2vZD8c//uyKMHDnAqF/wWn7w8mtsyoNug/M4osLmp
         rC/v+ecy3zijp5RGcDKb9KT7DXBtr4KEe4ia/mfrZWDipjKX4WQzvDLaqXhbrh6zf5BQ
         L3Zz5yyLt9OfUB2O+oLLFnaQNdu1zDiUEmBxYUS+GW2z27K4XU5xYopuRyL60X9N2Jyq
         IYnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=y8ih=5e=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Y8iH=5E=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d193si128913qke.1.2020.03.19.07.33.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 07:33:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=y8ih=5e=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8666F20663;
	Thu, 19 Mar 2020 14:33:13 +0000 (UTC)
Date: Thu, 19 Mar 2020 10:33:12 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ingo Molnar <mingo@redhat.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Nick Desaulniers
 <ndesaulniers@google.com>
Subject: Re: [PATCH v2] tracing: Use address-of operator on section symbols
Message-ID: <20200319103312.070b4246@gandalf.local.home>
In-Reply-To: <20200319020004.GB8292@ubuntu-m2-xlarge-x86>
References: <20200220051011.26113-1-natechancellor@gmail.com>
	<20200319020004.GB8292@ubuntu-m2-xlarge-x86>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=y8ih=5e=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Y8iH=5E=goodmis.org=rostedt@kernel.org"
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

On Wed, 18 Mar 2020 19:00:04 -0700
Nathan Chancellor <natechancellor@gmail.com> wrote:

> Gentle ping for review/acceptance.

Hmm, my local patchwork had this patch rejected. I'll go and apply it, run
some tests and see if it works. Perhaps I meant to reject v1 and
accidentally rejected v2 :-/

Thanks for the ping!

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319103312.070b4246%40gandalf.local.home.
