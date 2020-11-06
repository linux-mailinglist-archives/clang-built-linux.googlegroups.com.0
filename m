Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN4PSP6QKGQEANS5HJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE372A8DBD
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 04:49:13 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id 33sf2774505pgt.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 19:49:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604634552; cv=pass;
        d=google.com; s=arc-20160816;
        b=OSQLZjVGd+VGw3QqFLzt9TgP2HeMTdb28PkxKEDqBneA0vZzeKsjpqi+HjGuXx4W6O
         F+h1++df8VuNzshedPlmxhDqH9f0jG7d0AeELS/wZ7gpLY03Mbbw9VVlBesh/9fQG5a7
         0HKwSVk9dbVFkCRS+OQScEEOo/459LMVVbVIdRe4LZL2ca/gojqEFvDDnP1/RHl6OIRw
         TwYX0/vJVWfo9DmLs1d5k+l4ez4krhc/x+sJx/xTN7AMbopK95OxqpI9WmsIrH6Dwslu
         2CkchupzaXK7jzbfFvSHy9nfGEr50upSq+tNPpccssD5hkothq+wXLXVzXiHOwN0I6pw
         v31w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=V2/L60nwz/pS2wSqhhbbOS5Hs04JfssyGv2qIwc6ZvY=;
        b=gYPfIzVRnEndVjYmtkJNDP7AtlCa5hBvbbpRaTbshaK4AtNTKbYsXZ5mKAzAcurRim
         e65NF1B50/54cIUtnBIa4LeszMw7npKVhkhaxmgw/2FBUTg+Y2LkYndY+VHOaCdxrofa
         jAN4jIyKVxnh8I4x/mCPDXCixT/VoidcFBNI3xRvqss/KD4vQ6B5UyB/xbXc++rXQmw+
         c1gHLQm+3PiPXPHEdDkC/m0euTwcR8Kea71WdG8/JwD95aBNykHbh4UzbNgLLBitVJOH
         uBeOHzs8MkvgSBtsUhBDySU/gjnZqu+fMU+NiKa6K9udXIRhFxeGf1dcCyse9z3wdMgh
         H3Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fG4iOMhy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V2/L60nwz/pS2wSqhhbbOS5Hs04JfssyGv2qIwc6ZvY=;
        b=Hg8EncT/ehsCnmQYqYhnVLDPdqpPAAYztwIK/iq8/8s8bY+HK4baMggEj12qP4jUv+
         K7YXYS2YBxzz3E7sKL2hqfdS4MYZnWL6eQfrejILGAFKTeH0mdBMfNt9xB2kNVjuIz/E
         CWoUkbFe3MQx+Xdq3jJEh6/g3LUyhJbHqCMnqmWJQIunF4x//R8PqEY7bM/w/SCHQIva
         koIJ2d9bjDGK2o3CZa3+GFDvIvqyZRP/SvbxhdxMdRlp8G4d5cfL7HA3+WAg7yEkoBZg
         x2bWybnz1TM4KRvV2SPynsGbYl01uYTotclWPrXRo7qj4adZRS60kw2KTsCrtJGvJYdB
         wWzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V2/L60nwz/pS2wSqhhbbOS5Hs04JfssyGv2qIwc6ZvY=;
        b=sw4mptcJtqly0d6fcLzq8Lev+7CWY6YNnGyNbjUcsTH97G2OwPGLqtTjdnvJFyi+NB
         PHz78XyaudKdZiI4G2nTYtGpFyhU7oqdRFNUas4iy26N8EHJ/herqPEj5kkavxgcFEco
         beFSfkBvZtR+oPIO0jLojJO2Grs4EUGyuex72hya3EyfuDZYcMZhv+T/oGtD3vF4cJne
         +tOtZUff03LECACrCAOdQhuTda5JM9cEVwD78JwwKiLxBTN8Cn1TEBSN15u620dCW9P8
         edT/exDxN8I1P6DT1dvubHKTgKIczEdHYEJ4ywQTBBQE4ZOnS3x/jsoRLNu8jfkscm3o
         0vyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V2/L60nwz/pS2wSqhhbbOS5Hs04JfssyGv2qIwc6ZvY=;
        b=gAGFQWpZ9nia5UF9hi4mpXz/L262Jf1zVfiTuw9Kvss8hrDdhQleZjfDyQsbvvhTi2
         0egqYpRLHBWFOtVePO6xiyakWgCL/rnHaY9Hl2ME7t300nNI+JiZbH1LGE2YZ6NHcBOW
         zFXYTXQ4sMn96NviMxnY3tBQFqHdq64bnI7gAKyqTjzWcV/75mCre/N4+JvzCYEYJz6i
         ToXurxVxn3Lw92/aF60VMQoyNvQgfGwB5CRVji5u04XT7Tux/p2TW5V1AXdtK+/DDHEF
         6rFpya7G/Yh3u35NwQfvaR8hhpgFcNFmJLIB9VHCTbfeFcUPpoxw+2pyCvFLoQYv3wbk
         JrbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532v7W6m/Br50JOPZZ9FyxYNu5dOrlICRFKv6xHqhMZ2SX/CMYCA
	M6I6MgoKKmt/bA70ZEyGf/8=
X-Google-Smtp-Source: ABdhPJwH5vU2Z/VK4PzvDdPMhdOokoHOl0pGEXFW4zSWFLkH3HgAWfjwKlRnq/j0gZnLnsnCDyJHGA==
X-Received: by 2002:a17:90a:f0c7:: with SMTP id fa7mr239780pjb.3.1604634551965;
        Thu, 05 Nov 2020 19:49:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:aa08:: with SMTP id k8ls139420pjq.0.gmail; Thu, 05
 Nov 2020 19:49:11 -0800 (PST)
X-Received: by 2002:a17:90a:d70d:: with SMTP id y13mr256931pju.138.1604634551448;
        Thu, 05 Nov 2020 19:49:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604634551; cv=none;
        d=google.com; s=arc-20160816;
        b=LwhDSnf1ubhrawFNOrTosZp590rXLGlOrMRS8nH+UXBY1AJ0vxhI865gALRPf241ih
         fVC5y2d5xwi1H6fYq0XpvB2n3RfAXO2BsTOZ/W/RkrtBmMqUTAVn2mDQADZhh9iZNF+6
         Y1uNHhnnKo+2To/68chA2XWo8k3Jgaf6NViwmtMVo8X6Oyu0JN7YkAMlynY3uazUkDcj
         ZPyPG9rEkAZKDX/kxKX+HOtBHOYg41a/UNYclmEmIVXmEQECEqdOSbXiXh3SVnOdYWbv
         WL7gK+K2bEk8MicCB9floC9t+2iEYtWpZpZ5xpjCupN5dIw8WB8TiMVS4vAPZ5Rl5/MV
         IWCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0oV6zTD6LpNnhkp+52mi6F8NkFZ6auhC3pOPfDEuyUc=;
        b=KaFmOyPqVEQjbHRgVYA02tIcJBsvoLNLlJGtY5k6tMN6FKnsHU+KNU4vBMtMDKaD0X
         1aGGpd+d3Z6u6tJdEgdRAkwGKO+BdCKqznLAWLzf2Pw+gKkIQW6qgOSRbumjR48XKYPB
         bYP/+r7K9JNihE7SPbfSzazLiynVgFbm0006Zua7BxdPC3wwhZOQGkM3b9uyHK4zbNz4
         IoWR8yYyyrYIgJ0CBk9buSr2B+5vM1NphLKfwPEOekv1/9Zy94rLWk6kE2MM/7ybhwv4
         vYCP7jXPdlVh6WeZHGP4DWnjpjvcQqrgAlGoWh8GmHGJq9yri8+NxXZZ0f/TKqf5BKHA
         34Pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fG4iOMhy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id m62si2074pgm.2.2020.11.05.19.49.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 19:49:11 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id y197so18843qkb.7
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 19:49:11 -0800 (PST)
X-Received: by 2002:a37:4796:: with SMTP id u144mr5356208qka.235.1604634550544;
        Thu, 05 Nov 2020 19:49:10 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id u2sm10411qtw.40.2020.11.05.19.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 19:49:09 -0800 (PST)
Date: Thu, 5 Nov 2020 20:49:08 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	John Ogness <john.ogness@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH] printk: remove unneeded dead-store assignment
Message-ID: <20201106034908.GA2143960@ubuntu-m3-large-x86>
References: <20201106034005.18822-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201106034005.18822-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fG4iOMhy;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Nov 06, 2020 at 04:40:05AM +0100, Lukas Bulwahn wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
> 
>   kernel/printk/printk_ringbuffer.c:885:3: warning:
>   Value stored to 'desc' is never read [clang-analyzer-deadcode.DeadStores]
>                 desc = to_desc(desc_ring, head_id);
>                 ^
> 
> Commit b6cf8b3f3312 ("printk: add lockless ringbuffer") introduced
> desc_reserve() with this unneeded dead-store assignment.
> 
> As discussed with John Ogness privately, this is probably just some minor
> left-over from previous iterations of the ringbuffer implementation. So,
> simply remove this unneeded dead assignment to make clang-analyzer happy.
> 
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting object code is identical before and after this change.
> 
> No functional change. No change to object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> applies cleanly on current master and next-20201105
> 
> John, please ack.
> Petr, please pick this minor non-urgent clean-up patch.
> 
>  kernel/printk/printk_ringbuffer.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
> index 6b1525685277..74e25a1704f2 100644
> --- a/kernel/printk/printk_ringbuffer.c
> +++ b/kernel/printk/printk_ringbuffer.c
> @@ -882,8 +882,6 @@ static bool desc_reserve(struct printk_ringbuffer *rb, unsigned long *id_out)
>  	head_id = atomic_long_read(&desc_ring->head_id); /* LMM(desc_reserve:A) */
>  
>  	do {
> -		desc = to_desc(desc_ring, head_id);
> -
>  		id = DESC_ID(head_id + 1);
>  		id_prev_wrap = DESC_ID_PREV_WRAP(desc_ring, id);
>  
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106034908.GA2143960%40ubuntu-m3-large-x86.
