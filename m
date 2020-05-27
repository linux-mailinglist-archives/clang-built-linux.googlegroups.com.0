Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB35QXL3AKGQERV5T34Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7E21E4A8E
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 18:42:24 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id a9sf179397uas.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:42:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590597743; cv=pass;
        d=google.com; s=arc-20160816;
        b=csYwFZfmfGXH7tawbcVNTtHQejNpOOUMEeM+G/D2ZBqKNhDrrXQSl8wAAw/O4WvqYP
         HXtD4WpmxjDuR6wLBRJH63n6WS9VEYbHP03NXdjIqMf8isRwhXHfMqx1RvP7YLdqjYiU
         xs6cgV+Aitd2KQ1IR0vA7bPAnivHm7g3HLXcRajpkwwdWntt6cqlqdCGLWnpSvlxhzrK
         Ori4CuWPUJjdoCWW0MqBuNnb16qY2/9g6jLXA8ZrrVP3Qk/9BkjKLeawKLlOj+qjhhTx
         Bw//vRSvX0y8VXInJrb7aQRkpzy6emATCdFJdrKvz7HCM9p7cow0MXZaoKqdY/J2ZHSS
         IKlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=jStwrA3kGEZfxPZjNQjIkeqcGz66aFs4GY1jEPbpgLA=;
        b=KxnIrr3YyP1SgGPuHzpTcfcFxgrjPLKPU3M3PeQ2XgNlfZe/WFjUG4Nxd8HAq+svJL
         kQhX19RJxoSdEM3v7uF/Rr/cMAUo1DY7wdVHZfSt5DtRw3FWIdg0yGMd9ZVv55EZummo
         zGmTDPa5IIkHXAUcSLBmszffmQ/jjsbkQ/mO8gMjjmfuq9nvefImzKBCPnBLnxNfaTgO
         KHpdnch+2ibactAGFQ4sBk/MDNsFl5GOynkLbE8FtV5bzZDbtkYPeHG3+eFjiYH+n3da
         XNhCbpL/Z+UnxuS8TQgbn18j3GWpl88TWA7UdQymBCEpDOrWCk+q0sZwpSOTw5MOuT53
         VWsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KFBFTPaz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jStwrA3kGEZfxPZjNQjIkeqcGz66aFs4GY1jEPbpgLA=;
        b=eaLyWGbwGjm+SBX6PVEuOKJMHOVwPGvknwohc2StcJ3hNhkzECswIKa06UuwTVOrGh
         7SNpxoNjUsNeyF4oX+YjIeLB//cbIJP+wZkfUl2Rm3+N9IT8UMBSSRrOPuK+VBQv0Bz6
         aG8QNIoKwULTq/UJPWIUb9pNFKo9oMCEqqdA1LarG9SQMLuvaA3Efbd3PO9GYnQYwLbi
         uMGz2akPyJsjvcuPIvz8pZ5QYaU0l5LPfeww3XiqmXv2wNfeq0LAj8c8BraELPtP5H6K
         s/1bP8OWd/R18UERhCozX+7f0rN4/brHpIVTix/hL2aw5oSWzhfngqzptJsrTBUZ6/2e
         OWCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jStwrA3kGEZfxPZjNQjIkeqcGz66aFs4GY1jEPbpgLA=;
        b=SAywlTeWt0T0V3ymvFIAGRbGJU4dyc8dfoeQyyBszKAmev6R+gBDDZy7ncWw/KANKm
         2K18hc6wvg26imM8utfV0BBO51LP4np7MDnSxN0CphE7Uhv+BNRowv2bGtWV7GIAT1Qi
         ONozRYRm7oLS1L1l1bPeJm0zaJ+qfE1x2GzGn6MdaKeyCK0ZgRvHxs2lBecxQyF8TKJf
         5ocsal8JVxRdIhNuH5sOueats9yyu5bgX2y10/umSvX4s9+/Ts5hYmtRBAaFjB0pE9W4
         ++cQtzRR7yljvNtZRrPGrUzvj+B01KQzRzqpO5zieshP0GzPvZKzH6Rp/bEUBd7fa2qD
         8t4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jStwrA3kGEZfxPZjNQjIkeqcGz66aFs4GY1jEPbpgLA=;
        b=XmqxWZCXCVgEMyB8l7QL+wA8vmm25mOW8cdVOgKHC90Idtqtf9H4d6BGN9pMOWRvPt
         1vjZcvgXbyPAHA9mlUrLUGr980r3w2oCH02PHlCJD79uKLSskE210uDX7AdOey8ScCz4
         cNFvwtHCpmzEMJPS6mOQ0E+af9ZOUoVmGx1ghM/NCVDXhbikcuQ7MN8rmOlo0qDqN8CV
         lxuAhP5MDxTW6qm34FWmf+nHB+yRBPiZjlL/MEWDDCGa6w8gGyo55VZYf78zTmqX++QJ
         ishkQuSF1c6agPnYdA/lXlRecTNNK455ajKTcobkObwD5wooMpNn1UE8fKrkfV8cDJ1f
         q13A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Cip2AuS3CfiSSZ46ZWanSIO5iuD8eLG3Q5iI1DOUfruh8Tpxs
	lydiqOFnUTVlKMKGCPQtQsc=
X-Google-Smtp-Source: ABdhPJwrXrsTxMai6OyJE8c95JCEF+9qtAPX2qEOLtnStD3ZrGxYZzPThqq2EcBnGzguLNOUuovCGw==
X-Received: by 2002:a67:ac45:: with SMTP id n5mr5468112vsh.108.1590597743397;
        Wed, 27 May 2020 09:42:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:7887:: with SMTP id t129ls285232vkc.7.gmail; Wed, 27 May
 2020 09:42:23 -0700 (PDT)
X-Received: by 2002:a1f:344f:: with SMTP id b76mr5699705vka.5.1590597743058;
        Wed, 27 May 2020 09:42:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590597743; cv=none;
        d=google.com; s=arc-20160816;
        b=EWCgWWPkMkEyQt0iqrtGXiw1GwhdpWvVY1LX0+nWX0pxpD9IBQk3uAnW1SXvIqeT4Y
         HAQq0FaBOJYhK6VpDcPVDYVlEFdaXgcj7oiENih6oT/IuFT3ATPp2wq0YBnOnUF4loSt
         FCdgSJURopnb9dJS2lyNshttcsyk5y6vI9k0gIejMYTNIrZUBguPzClbWNlF90ueSzol
         DjZiQ2Qauw17J3UbMNlXQ2LuB00N8+Y03gulT5Nb6Em+XAeuTpHTWaxQLKkUtf8Mjabi
         R0okEKf1eEQ/ENJx5GcUNO3d0cnTHsmISxxRrSu/n8VoAapGZogq+g6L9TdaXxkFbLNP
         Q82g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XocHLjl4KQE4CHPG3EcVffWOwMuyfL2OpIEOiwvn290=;
        b=cbp0f9eUvhcNVNJU6hWS1D4wDDNJPrGS8V4RkOfn0xFRzG0wQ6WcTT7E3vtH/igoMD
         R2iHl7/YOH5RWIxtUUqQ4i4uMCn+s+xLvNAcWE7WPMhShqZJ6kD9j3wwVPWAzqMXGm2B
         PbC7lOTDrZ74Dqg0N6xezj6r8g0HigIg9lNBNSMtZlqPvyIsMXA0vyP9E2z5qkilKGy7
         7FGTkSs3N9jfl0xKAkNkgJ2AsgQF8upWTd6QnVc12vUf3DXY8+ocWDL/CCnJI3fWo1JW
         l4kb9q2kEKYLTTbRIXHUiYa6PFeaOSSCUzFcP3R1AgoBlViJNZLK1aff+bDH1PSkzCZu
         ut2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KFBFTPaz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id t9si306928vkb.1.2020.05.27.09.42.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 09:42:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id t8so1715852pju.3
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 09:42:23 -0700 (PDT)
X-Received: by 2002:a17:90a:268f:: with SMTP id m15mr6372558pje.190.1590597742622;
        Wed, 27 May 2020 09:42:22 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id i21sm2371045pgn.20.2020.05.27.09.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 09:42:22 -0700 (PDT)
Date: Wed, 27 May 2020 09:42:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
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
Message-ID: <20200527164219.GB1073507@ubuntu-s3-xlarge-x86>
References: <20200527141754.1850968-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200527141754.1850968-1-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KFBFTPaz;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

We had an identical patch pending from another contributor, see the
discussion and result in the issue below.

https://github.com/ClangBuiltLinux/linux/issues/1010

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> index 8501ec4532f4..442599cbe796 100644
> --- a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> +++ b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> @@ -170,7 +170,7 @@ continue_block:
>  
>  	## branch into array
>  	lea	jump_table(%rip), %bufp
> -	movzxw  (%bufp, %rax, 2), len
> +	movzwq  (%bufp, %rax, 2), len
>  	lea	crc_array(%rip), %bufp
>  	lea     (%bufp, len, 1), %bufp
>  	JMP_NOSPEC bufp
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527164219.GB1073507%40ubuntu-s3-xlarge-x86.
