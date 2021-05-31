Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBC6R2SCQMGQEXNJJKBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1573967B7
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 20:18:52 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id s3-20020a92c5c30000b02901bc737e231esf8460778ilt.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 11:18:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622485131; cv=pass;
        d=google.com; s=arc-20160816;
        b=M7CoLs8ZwWPY3UwDUh0wxBC6wttiYqAYuzZlAoLMrpRttCCiZ+Sqz7qYQupQmX+TN5
         VQTn+bsh/hR9LJcgJLLBTUz/uwB0ILRPaYIMMyGf8TOpBHtMZbIDNKsRxgmCO9qFbhll
         kj5rFQLH3ix3/gSpU8aQC0+JgB/f82Fp0+KRJs/CGxcoitl2Wh1nFmQa6xC9MjLw026G
         xpY/Pd/o0lrYGXTtuxbDYljQjzXGsuIpBrZamF0pzk9iVVOywYI2KIeEu7Z4XhxTtUZp
         IoNdDgfgH+nUNZQKM5kEQDVO8/uTqwcOxbzEQAbahxPv0yAvB+xwaFtE+QlXzOKj3mMg
         j5KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Y4cdkz+W4KPHKZrTKfaxneNxHGTgWEDGX2G8k767RPE=;
        b=aQV1GR4JXQH2gHcDnNMQV7LphHMHScLW9QCeoBI405yJsYjGtnglcNndw9/OLH+EU6
         uBvPYT6u+Xck+/oKSywowMRJ2epFTQB1OtHfqvJ2lVCx9FkAgZaxXv7XTZE0vlg8DcZl
         DSwh/xFzwZdTQU//Q5L1wd92OLGT4g+7mtbAguKaeAHpOnK452SCC+f4uWzn/DutcwKg
         EZC30JHzw1jPz/XUygt+URp7yaOpYjBARA7S5KHFJBo/9lXcgigL+yPtS0SAqDkGhQfJ
         LPH0r0n4Eo9zPU+lvCNTdklTvStfhrI3KOZ6CHdsDILt/7XULdgrzqX/Gcq1/3zH2xqb
         F2RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gnHl9qpR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y4cdkz+W4KPHKZrTKfaxneNxHGTgWEDGX2G8k767RPE=;
        b=aSb7UnttVo2M8Hc6Bp7JaHbFQvBDIjQaPSUE0fKCPCPZzxbLVzLPOQYeVr3kVYVZJ+
         jy6O4+fb7A4TaYPdU8wP0Ysnzy7HE2fuF8EmSCFhdbbwdtyXpa05Lh7Jj3MkBurrQ9p1
         QropxwQa6OvMl01pdVF/nfQzYC2/eDr5aafUj0djWs03vfBj6xRyqA2O7Oc1y9EuFXDH
         +IpG4c1QNKf0eg7U7a7C2uj6BgzMTuhda+2PUgq55nFfg4ytEzmda8wBo73Nu8sQJsMm
         9q3JgHpOW7Svk/fXxheJix+rbEEoRGelzYto0J1c9lcBWAULu8dt38b7CQ1ZqFPZnwZd
         b2Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y4cdkz+W4KPHKZrTKfaxneNxHGTgWEDGX2G8k767RPE=;
        b=QlFpDHUtTzFMPdWb1tAhaAvWpaXhm6r4oYqkgf9wPy53Y5zh5m08uFCi2/LjJgC6p5
         0Xhcuy6IoMIyQhOCxG0/5oQN3hSGXqROF9GQcxmlUHQpE5LzbMFaBw/QOn1OIB333Lm9
         QrOEmOFWasVQuEqJrodTYQ1OD7DMHVqycH0NMEiTVOKpAREripHQzLCFoKLwoYD80auY
         JM67eHNRGxsKORPjAyG+X5+9ZVrZFFbHIN3OIORbqK9pG9jALsMfX0LrEtlXdj+qyEmE
         EO4trpym/Y4nWiMAudk3rf9vO3FET+EqEXGFjqOwb/mHFQWzFxNeAwc8zTGMQtvPaB2Q
         f2Gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sBe3M2iMXH9QRhI6QAWMYNYyQBo0qwPHi/SOwcIra8c2lZad+
	8vhocD/xhEjEA1URQ1RtaEI=
X-Google-Smtp-Source: ABdhPJxa8v4p9/4x7jNnwnZnmGLYPFMfRuhh+FlRes8Sgy4vwNEiQP6w4LG07xAyhQ/KembXTcQe/Q==
X-Received: by 2002:a05:6602:2013:: with SMTP id y19mr17947018iod.71.1622485131592;
        Mon, 31 May 2021 11:18:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:220d:: with SMTP id n13ls2354122ion.4.gmail; Mon,
 31 May 2021 11:18:51 -0700 (PDT)
X-Received: by 2002:a05:6602:8d0:: with SMTP id h16mr17930349ioz.145.1622485131237;
        Mon, 31 May 2021 11:18:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622485131; cv=none;
        d=google.com; s=arc-20160816;
        b=A5O167voLk8f2XdMhgP8UzBZwfx6lCn/pXvEcpg5rTXIBfEcqQ5V+rzWUA7nK93UYB
         R1FkSakppC8+oCx11YvwY0TCAjfiSSwOubiKjThCSVF9HuxiqyyfD+S9Fm1ATmwO5Hpi
         5MNadWqYsfzG5wCdZ32DQCfYHYzPO2zkQm3xCF5keaeuDsaNbQFwDAiZtS7bhAADFDh8
         /ewuF565Y8J5unwNIXA4kCgVsyOqCR+qJjso699dLimr0KFh86ao1vQ4Ln1nkkCJH0fA
         lgofYhzCInWCweWlgjz8cT3/ezQCObPHKTrt3CuCcaT1GpWJoX+vrHFa9KBzmaWzISlG
         v9wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CijVftCozMCkaHQiO3biTQFE6r+CTQgWu/DDg7u6m38=;
        b=ruRwaBK2k7ZBtz4t7rAC9fbCIIlYXC4y9f+TYwq2cF8SpxvBKfysiCdf+Hqow2jkjH
         8bI2+gug5L3apvst0v2m9RsdMivKDtXV6l1JSv2/Se2LHIeutu+X4ShMwnb6vEBFLMcb
         ACn+7/5WOiNJT+XX/thvyebuKp9Yaz287nWwYA4X2hHNyFjPO1jM5rNSGvCrS7koIbny
         YujEv4cy+Zisxf3EOqLrdUX0wAOr2mZq3dO4oCkR0P/2OHjwoP6eCF5D08gxowf8r2k/
         +eA4NDY6PuX4mil0nmwX+RGUBdzu0b0La1wCTr34OeBRF0jsRHUCw3TXdQDMNUkb/Yl1
         5c1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gnHl9qpR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w1si899161ilv.0.2021.05.31.11.18.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 11:18:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D07186124B;
	Mon, 31 May 2021 18:18:49 +0000 (UTC)
Date: Mon, 31 May 2021 11:18:48 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: samitolvanen@google.com, wcw@google.com, ndesaulniers@google.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 6/6] pgo: Fixup code style issues.
Message-ID: <YLUoiJr5+7WX+roL@Ryzen-9-3900X.localdomain>
References: <20210528201213.459483-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210528201213.459483-1-jarmo.tiitto@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gnHl9qpR;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, May 28, 2021 at 11:12:13PM +0300, Jarmo Tiitto wrote:
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>

This should be squashed into 4/6. Do not introduce issues in the middle
of a patch series. A couple more comments below.

> ---
>  kernel/pgo/instrument.c | 106 ++++++++++++++++++++--------------------
>  1 file changed, 53 insertions(+), 53 deletions(-)
> 
> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> index a95c86d668b5..b30104411879 100644
> --- a/kernel/pgo/instrument.c
> +++ b/kernel/pgo/instrument.c
> @@ -31,7 +31,7 @@
>   * ensures that we don't try to serialize data that's only partially updated.
>   */
>  static DEFINE_SPINLOCK(pgo_lock);
> -static int current_node = 0;
> +static int current_node;
>  
>  unsigned long prf_lock(void)
>  {
> @@ -55,58 +55,58 @@ void prf_unlock(unsigned long flags)
>  static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
>  						 u32 index, u64 value)
>  {
> -    struct prf_mod_private_data *pmod;
> -    struct llvm_prf_data *start = __llvm_prf_data_start;
> -    struct llvm_prf_data *end = __llvm_prf_data_end;
> -    struct module * mod;
> -    struct llvm_prf_value_node * vnds = __llvm_prf_vnds_start;
> -    struct llvm_prf_value_node * vnds_end = __llvm_prf_vnds_end;
> -
> -    if(start <= p && p < end) {
> -        /* vmlinux core node */
> -        if (&vnds[current_node + 1] >= vnds_end)
> -            return NULL; /* Out of nodes */
> -
> -        current_node++;
> -
> -        /* Make sure the node is entirely within the section
> -         */
> -        if (&vnds[current_node] >= vnds_end ||
> -            &vnds[current_node + 1] > vnds_end)
> -            return NULL;
> -
> -        return &vnds[current_node];
> -
> -    } else {
> -        /* maybe an module node
> -         * find in what module section p points into and
> -         * then allocate from that module
> -         */
> -        rcu_read_lock();
> -        list_for_each_entry_rcu(pmod,&prf_mod_list,link) {
> -            mod = READ_ONCE(pmod->mod);
> -            if(mod) {
> -                /* get section bounds */
> -                start = mod->prf_data;
> -                end = mod->prf_data + mod->prf_data_size;
> -                if(start <= p && p < end)
> -                {
> -                    vnds = mod->prf_vnds;
> -                    vnds_end = mod->prf_vnds + mod->prf_vnds_size;
> -                    if (&vnds[pmod->current_node + 1] < vnds_end) {
> -                        pmod->current_node++;
> -
> -                        vnds = &vnds[pmod->current_node];
> -                        rcu_read_unlock();
> -                        return vnds;
> -                        break;
> -                    }
> -                }
> -            }
> -        }
> -        rcu_read_unlock();
> -        return NULL; /* Out of nodes */
> -    }
> +	struct prf_mod_private_data *pmod;
> +	struct llvm_prf_data *start = __llvm_prf_data_start;
> +	struct llvm_prf_data *end = __llvm_prf_data_end;
> +	struct module *mod;
> +	struct llvm_prf_value_node *vnds = __llvm_prf_vnds_start;
> +	struct llvm_prf_value_node *vnds_end = __llvm_prf_vnds_end;
> +
> +	if (start <= p && p < end) {
> +		/* vmlinux core node */
> +		if (&vnds[current_node + 1] >= vnds_end)
> +			return NULL; /* Out of nodes */
> +
> +		current_node++;
> +
> +		/* Make sure the node is entirely within the section
> +		 */

Move the '*/' to the end of the previous line.

> +		if (&vnds[current_node] >= vnds_end ||
> +			&vnds[current_node + 1] > vnds_end)
> +			return NULL;
> +
> +		return &vnds[current_node];
> +

Remove this blank line.

> +	} else {
> +		/* maybe an module node
> +		 * find in what module section p points into and
> +		 * then allocate from that module
> +		 */
> +		rcu_read_lock();
> +		list_for_each_entry_rcu(pmod, &prf_mod_list, link) {
> +			mod = READ_ONCE(pmod->mod);
> +			if (mod) {
> +				/* get section bounds */
> +				start = mod->prf_data;
> +				end = mod->prf_data + mod->prf_data_size;
> +
> +				if (start <= p && p < end) {
> +					vnds = mod->prf_vnds;
> +					vnds_end = mod->prf_vnds + mod->prf_vnds_size;
> +
> +					if (&vnds[pmod->current_node + 1] < vnds_end) {
> +						pmod->current_node++;
> +
> +						vnds = &vnds[pmod->current_node];
> +						rcu_read_unlock();
> +						return vnds;
> +					}
> +				}
> +			}
> +		}
> +		rcu_read_unlock();
> +		return NULL; /* Out of nodes */
> +	}
>  }
>  
>  /*
> -- 
> 2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLUoiJr5%2B7WX%2BroL%40Ryzen-9-3900X.localdomain.
