Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBZMF4X4AKGQEACF6C6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AAA22AA28
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 09:57:26 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id k126sf155504vkg.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 00:57:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595491045; cv=pass;
        d=google.com; s=arc-20160816;
        b=epqBZzVqB13vyc+PLopzSordp2EmPQGff26HKgRLUY7cPjCbS0OqE+1nvWToevHOMU
         tHcvgvcc6mtdFXw8FMbsQPU4+5bmFim8EEdesEFlRg/8eQjQKCNPQclle91SzQ73wHzi
         Nazo5HotlbJR2urkVn0wysvyxcNFeTki8uZmLr6H31clR2w4oH+vBLcQ5I+UeTof7plP
         66njQgqdsWCmqWa7xHW37ZSdYltNejxOv6UWFDZggmhCgoDMQRBqobHT2Mof7NuAEtQv
         +876RfMLwDATvW8TzJMXSqM5xNR84uUi2wgU2t/82VIMA42QcjsjNXuFnjUmPzNJQuUl
         AiiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=rs4IL1UWYlsnY28zGyCNqSxQpiTVCVd0L3qDpKqnYpw=;
        b=Y7CKYL7wAF+vR4aUR0WarYHbmJ4mDxSXVbDoa9ui9vQw4C3Cq+8/lIjfdsYS6BFCsS
         B0uvUt8KfUe9RhGGwZ0DuOmBBxJzwqPMjWgfWjWDDWnD+CIGYOMTttJBqqJqXDRSZeqT
         xhTVbdgL/ocBwPkyz1TeaR2wmHUWlzBIhextNYJNkrp3lmNmQjjfuGNg9Zy1/RIjCGJY
         UIDadhrcEiIpxkJTozY+iHKWUSRJUyxvqb6cCJzHkNBmJ99WdEEnjRugBZeg6a/Ktw7y
         gpEAZvZ7NdL+JUMh3p8bm5L+HFam3e8bLjZQ7dZnoqGu5Dts7lqmGItzwIRjY1767O0D
         qz6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rs4IL1UWYlsnY28zGyCNqSxQpiTVCVd0L3qDpKqnYpw=;
        b=PgWe0bDTbJpBEd3ypi7SJuoAh66bdsHQm0LFIXuw5crPGMJWF+qC9wBqZWAPbGCYpW
         L+VV0/h7SiD1ezBcl73VnSf2wEKfsxjUDftgdnXpXd31lwEk8skz1asEpfm48k2GQhty
         Az8R2nQSMEMm1GIVc81imNMJgSJLmBhfH4hv6pSL3x9oCHP2sgOCfDvm3m1eiZpzRg/y
         qkyrMZ3W/mxgHRkBjVYmcsRPfjHsfFEkkzIaHN1ZH/ii8Tv8tIMspag5p0ybpVcQPbZa
         1rLgN7+lmTJRpQBB2DHoCFKgrCjkNjANHn5t5cqb2PU8uVVm2PK24XlnExYcJygl7IZb
         DNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rs4IL1UWYlsnY28zGyCNqSxQpiTVCVd0L3qDpKqnYpw=;
        b=nxHT/UV4NrGEdKuEYi3/Z31miuA0L3hNNfagrRet1P3BrgfabuwWLpZ7iGPQvcEGQw
         f516fuY6cl266SENn2lBAj3X1sYZAYUVs4fYPl7EuGflNg4KSHTRKP0NrTn65e652kXh
         GeRUqqC74oUOrQjj2cfqJ12bAxF5oyR/ybPmmGmtKxZ3VzoOrXE1AmgJglaC12lBH2mB
         mBprOudiuevxfMT6rl0gLEFiUeO8S6D3TJiBumwA7K6/ZP0J0GhAUf3NGwE2GAfTuYWG
         NYuv+9t8N+Byo9SObTAuGEnRxuWyKJNocQpsllT3jIzzN8HRnNY1tXqERJLBaa5azI+X
         GRyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JNUqaWr+WO11o8Q87Kc7HfkowiLzeaGMU6LoiVw38Z2gU9cjf
	VDqk1ld+pVt9Yflga/AsXyU=
X-Google-Smtp-Source: ABdhPJw9lkFPiOBziT1qKP1YNwNoCMpUnM5mpGt8lKZAfhT1mQ1bgPVDi00cxfo3XqOV2JMF842deQ==
X-Received: by 2002:a67:d717:: with SMTP id p23mr3029223vsj.194.1595491045508;
        Thu, 23 Jul 2020 00:57:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:634b:: with SMTP id f11ls338865uap.5.gmail; Thu, 23 Jul
 2020 00:57:25 -0700 (PDT)
X-Received: by 2002:ab0:29cb:: with SMTP id i11mr3101610uaq.12.1595491045157;
        Thu, 23 Jul 2020 00:57:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595491045; cv=none;
        d=google.com; s=arc-20160816;
        b=HSyxGM7tB+G4UxWaZBkMOW0lXrgtRWR1hJN0oXeGTiU+389V5aZpm2MC/Z5x6zdn+8
         olV29Ddm0IGlLm2FHq1sD06zauCacvP8q/Ul3XAu0g5izNrE5u6rWDE81ZoxK5mBb58w
         V/cjt+yLgLAgXILho8cSd5XmpuO2BTHbCaL+zIlEpO+2yIa/PpiAoTsjKI6KOzscoA3r
         J3WUINfEkEGRVk8XSDlRaRiGdL2WzaJ8IGklHM4p96cgKAXAJE9zpwz1J8+pP9wQWO3X
         +hMoHrnK2hT1xvKv27voPGxt0yJYcCDa8j1aumLpO6ld4AkiCGRhzn33pqdW0SPEELV4
         gUCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=WdAg3YWQ3LKXPgr+m7jerW7lcwmrbvHVWmNffD1Vjic=;
        b=AotxfPeXAvUr8ox1JkgaaD7NpLXetf+xLu7/jydeZ9R3sYuXv4MmFufgpNVl/iQuMa
         nkDPA0TqkaVSh1811D+MSD6oMqCzwTu80RliMCF5TA128CE6FY75yNeL3eYVWktV6HEz
         mz2tC6dO28JTgeJ56gy2cRMPe9Va3w1lumZrPHYVeJbTTAxX05LVMOs+NwQSrm3Ymhnu
         Bm4LPpyF3DQWX4vCjD7aqPFVXQfjixTsFSbhpMOpZgVoiafhJq83gof+jtw7d6GgfYCp
         ZsLaPemaLhzMtxkIBa/lqm4MMibxC951hiXsvWE7BVVerf0bTVRcAnHv102VVtFFlxvz
         Szzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id t13si162582vsn.2.2020.07.23.00.57.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 00:57:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1jyW5M-0005ta-TO; Thu, 23 Jul 2020 17:56:14 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Thu, 23 Jul 2020 17:56:12 +1000
Date: Thu, 23 Jul 2020 17:56:12 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Arnd Bergmann <arnd@arndb.de>
Cc: "David S. Miller" <davem@davemloft.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, Tim Chen <tim.c.chen@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Jiri Slaby <jslaby@suse.cz>,
	Peter Zijlstra <peterz@infradead.org>, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: crypto: fix building crc32c with clang ias
Message-ID: <20200723075612.GA14212@gondor.apana.org.au>
References: <20200527141754.1850968-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200527141754.1850968-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Wed, May 27, 2020 at 04:17:40PM +0200, Arnd Bergmann wrote:
> The clang integrated assembler complains about movzxw:
> 
> arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instruction mnemonic 'movzxw'
> 
> It seems that movzwq is the mnemonic that it expects instead,
> and this is what objdump prints when disassembling the file.
> 
> Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with PCLMULQDQ instruction")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723075612.GA14212%40gondor.apana.org.au.
