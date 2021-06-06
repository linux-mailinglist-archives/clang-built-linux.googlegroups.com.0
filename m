Return-Path: <clang-built-linux+bncBAABBIPX6KCQMGQEDSMTB6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C86839CEC5
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 14:12:19 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id j7-20020a258b870000b029052360b1e3e2sf18770729ybl.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Jun 2021 05:12:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622981537; cv=pass;
        d=google.com; s=arc-20160816;
        b=TnqPteMVilgym3bGBMuSRryId9R84aClYlEqjAgN3x6Ofe6A4dybeI82q9P9WpRotN
         Wr3YNnKYZlHtWkSXId9y1UlQ/mrm4O4s3ckIJjqdROnBAEbN7CfxaD53E4Lz6/ZMugoK
         p2rxt2ptRdLcbQIyJ1B1BwT02DVO/eix6H70Pobs5NTt6AOEH4Rrb/LtZ82fuV2gBxA9
         CeI1AOZnc8LXqYyU6Hq20Mh/nW6/OCighLC29LjFYahNqkU6eSHee/8PgQ7TNrjuQ06z
         K0mdnSlPZ6n0XyWDfNrGCgXIyC+LwvSgGnn3q2moYpOqj8Nk0mJFQaOrpFIKGnydeRhe
         EYcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=FnNJuVEAzMpV37kpAUxVvIb7ALmq8V+xHUYAUr+XhdY=;
        b=hHcKJYihwImoau5GvFrp2b1ErgrlQHbMtLBd7asFdWAr2TDltv0N5h68ZWijv/3Chk
         DcA9zLaLqXorcMQgjYx8Nns2RX9bkfa8tqoH4EBhb0EjFNvn7Kzi31PrusJwdkGzDXt7
         531OqCWUcrLU12n1j2YnvJ6mJ0pdTX1zGEL7R+7uNdENY+uZXhTfYYdOZFtjKso7dqLa
         mfdr7m5/TetslFSGe8Z+qEEA4WerfDLGhoEmEoMbFJjP+80mkTL2S5OffLb/+s2OUcYW
         ZvfN4zV6rzRGSODgJqFhVkE5wDhOGp2K3VTSy4S8VDX4Ozni8ZLzjSbp3O/XDtD9TWSg
         pBIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FnNJuVEAzMpV37kpAUxVvIb7ALmq8V+xHUYAUr+XhdY=;
        b=rZPRtftsvYeE6troSdVeBxPPhNJ9/4NF8jRTHTb1pkloONilArPTK/E2C8jQuHkoRn
         OWk9diNeXr/mBGmmkrso4y8Fu1th7u21cCSkxhnCjnwvRfgLn9KLP8yJ2N/nV1P9smDw
         6LFPhiyh6v6Qmcldbqwpe99ctEGXbVThsx5ey69n7C7leTP3iO6nItM1LSSK+FPjLsvp
         /Uv4LFa/k+1mTrAz0F5uI5dngaCBmNFMvT1Ih0HOGRWnp2J6KToCQTcUKu9wEgz1sd2a
         rsLbAfcz3ZbWXCDhTlUAemufURSd8wGVT90XURKb/PQL5mtdBaONxpZISO1yuMo0oMc8
         JX+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FnNJuVEAzMpV37kpAUxVvIb7ALmq8V+xHUYAUr+XhdY=;
        b=obsms0IZmLOtXW0Gh3Yyx1mq3b/hiVbQr01h0lG3EQYSraEmxZOnPzGVY7a7bvim/K
         xDi352q8bNToeQp/e6o3MRXmcJp0Fk07AgyULi0HKAkYp2iewB6GrWPZACcVXgOcjOf2
         MYUzfyUF2jpdxOYecKt0Fl78nfwjTm/l3zl+80vXF1TqDqE93sDXVJum6nxBn01jtv/e
         AZBfnfI5uROvuyuvXADjV1Y99oTii/jC67fwNeIVYjCfXXEfTL1tjVkawpI6pGOpNtiJ
         UTtI/p146dlX00RRWrUaLEGRGsITgF3My/a6EfXqwDQ3kDZa9YM6LDWlpkr/okL4HrGU
         IHgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/I1JqLq5OLVDeyQ8/Zp1o/+EMcz44ZM049HQBktU5x/qWvd9c
	FNEk5LS/PS5wmKiVQoZR2PU=
X-Google-Smtp-Source: ABdhPJwj0mHfTQd4oBv0FobWsUBObNL2Exu0Brp55P8eoxGFaiNL3nYMQcnf/zpChJCWw2hzxuDqUw==
X-Received: by 2002:a25:2185:: with SMTP id h127mr18285813ybh.53.1622981537798;
        Sun, 06 Jun 2021 05:12:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls6724392ybo.10.gmail; Sun, 06 Jun
 2021 05:12:17 -0700 (PDT)
X-Received: by 2002:a05:6902:1208:: with SMTP id s8mr8800739ybu.71.1622981537325;
        Sun, 06 Jun 2021 05:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622981537; cv=none;
        d=google.com; s=arc-20160816;
        b=t3hsluVm0u8k3XFnwbo+iJk2JfUgxvVW0ZhXPygyxQFRgGy9HXS2A2xLLzk+8kvBC6
         YCNkY5bxH56v7uO/BgQPvMCs6O6BekQxfRXni/843ELpTrf6S/VFr4nT9n2sd4hyVLpK
         jqPrrVI4QN5CZojxn+a0nCXlNAkKz+b3+mRtaj4xaGll2trxoq7mJhPJUs2aqfU4M5br
         92r6b/0VIJNZyQn+E1CL5fvKqAx4v8WtCVMwEOiLl6LTasmeWlbAVVIazD8crlr99BP6
         UvBhXK6K53rt4R2z9nXn1eTDgcHh9MHw6TEvTKIbUs4cMX8t+isUhj+TZaQ70VPuAtkw
         z10g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from;
        bh=/ah7v7oMSg3y+BWA0HGh8dnCmYWxYpHQpoQ8s/71LEc=;
        b=eKs4Sbc8LD+ILdxLE7Rxp4ywogCMJ8AMAMwQa5sA1MDZXRHgdtryyy0S04LQn6u7OT
         fUYY7nt8dCO4B30nqWS/cOuWdrETMEeAGfUCYhHfUOe/IBdgPAaCylFOf2Meh6oZ6Cy6
         RVr11Y53bLI0kt4owdfj549J/tGTW449Ub85VUot9TuiVaAi/F0TpvsXw/hUAxF20Bza
         fmfKnsw+V13vVtlj8eU4PcOBDTpYt47p7DcyAg3XnKcDU/Ze4X7ilgHLGLm/qFsi3c4L
         T0hiq53ipy6rMYWyOky1rQUrWg4Q4DHeoR3PoVPB62BhD8LHR421EiDwg6unFLuLznum
         jYZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id q62si1390736ybc.4.2021.06.06.05.12.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 05:12:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 4Fyb3G4c1Kz9sfG; Sun,  6 Jun 2021 22:12:10 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: naveen.n.rao@linux.ibm.com, anil.s.keshavamurthy@intel.com, mhiramat@kernel.org, davem@davemloft.net, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Christophe Leroy <christophe.leroy@csgroup.eu>, Michael Ellerman <mpe@ellerman.id.au>, Paul Mackerras <paulus@samba.org>
Cc: linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
In-Reply-To: <40a43d6df1fdf41ade36e9a46e60a4df774ca9f6.1620896780.git.christophe.leroy@csgroup.eu>
References: <40a43d6df1fdf41ade36e9a46e60a4df774ca9f6.1620896780.git.christophe.leroy@csgroup.eu>
Subject: Re: [PATCH v2 1/2] kprobes: Allow architectures to override optinsn page allocation
Message-Id: <162298132158.2353459.12128294246619463248.b4-ty@ellerman.id.au>
Date: Sun, 06 Jun 2021 22:08:41 +1000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=michael@ozlabs.org
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

On Thu, 13 May 2021 09:07:51 +0000 (UTC), Christophe Leroy wrote:
> Some architectures like powerpc require a non standard
> allocation of optinsn page, because module pages are
> too far from the kernel for direct branches.
> 
> Define weak alloc_optinsn_page() and free_optinsn_page(), that
> fall back on alloc_insn_page() and free_insn_page() when not
> overriden by the architecture.

Applied to powerpc/next.

[1/2] kprobes: Allow architectures to override optinsn page allocation
      https://git.kernel.org/powerpc/c/7ee3e97e00a3893e354c3993c3f7d9dc127e9c5e
[2/2] powerpc/kprobes: Replace ppc_optinsn by common optinsn
      https://git.kernel.org/powerpc/c/b73c8cccd72ac28beaf262fd6ef4b91411fc8335

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162298132158.2353459.12128294246619463248.b4-ty%40ellerman.id.au.
