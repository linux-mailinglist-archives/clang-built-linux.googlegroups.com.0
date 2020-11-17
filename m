Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTP2ZT6QKGQEXDU43RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D8E2B57A0
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 04:02:38 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id p15sf10622682plr.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 19:02:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605582157; cv=pass;
        d=google.com; s=arc-20160816;
        b=RoFsSupHPvklCS/MgjdiY7rTmBXceFvlh+qrTniaymzkIvalzrh15P1gK5pQ3xCZpX
         KGB7hy/YK7vvnwu9xmBe5WlTFZdUps4gcjsCB+gso1R/dx7rBUGbeXCKPY+EpyP1ZZ1K
         SzRhwVeDwTFfeHiUO89/rZfjiY3jUITlpCcptmWEUath1xUA3ahCKsK8ZMEbAeVbSKGo
         v2Or8sLo2DT0RhqIpCtZKRUuJMVfldJNlk9P9ybgyukOsNuzf3cQMTFSr3YNMr6zhc3N
         2+wGckKIfulaIRXuem9w0VvLspO7iRf+bdhkCjaipE7veexCi37s/HZ42n/7YA0ACzYr
         253Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=WoZ9AK/QBP/ILXapXw87iWVYuZHsp9lC9irU9EiXJaU=;
        b=XiVFWyQJT1WeZm70BOqfDYlteaEb9UHZ7a1bmA6fABszRUI1QO2M653njN5py2mOEu
         silN4BJq99AM9/lF4s+wxt6BgXzGxmimmT9jAt27PrPKjZRF+7a91dwOop47bvOPg3ma
         19a3bJETDg8jcjOmz/G7pjGvypxOpLSe7OACRKGKpejxbwCjtHQ3jG4TS2JQFDhI4mtg
         XmjP9uSUHDEzhtX0U7qvykqpxSgHLImxvguHejQfDErBfwSROS82/7LxLc2w2cNTIU7E
         l7hcdb1IAIszesJ7j8F3AYJqKnhYY3CC0ibTGSILua+ldZ8UV2KbQ8IkkHzmBrmMMDEa
         SqeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iU3kKuyv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WoZ9AK/QBP/ILXapXw87iWVYuZHsp9lC9irU9EiXJaU=;
        b=qixTyHqum2BWCWv4PHHDicNMgbdnHCEbGzj6xrhRJ4+pWg1TU84AJDb1YGVX8Eugdr
         6mc/dqFp86lBsTcp1qKwFrwC9199flNZms1ce2KHqCLWrk2D6/ylDtYYMLxVWiAbIGNK
         UJ6Tj7OnUl/1OFrW5OCcYLtu9YwqrkmAw5CLtS8GxxEnAGGBGEJmwX/7GJrCfP0rvcwq
         5gN9q1IQQZj+FtMuRT4yiUgkaZKevOXFftBa7zO3i5fg2JxEFwlzZRUl4M7lBPr9AZ2/
         zOBrqzD8TyzdTkUjlHHSvZLENS7yHCVfdnTMtHzh+/R0KFuIK15VmuYd06EyDsFv48++
         Jydg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WoZ9AK/QBP/ILXapXw87iWVYuZHsp9lC9irU9EiXJaU=;
        b=HC33Ue6YfOk29Tn1EJReHEpphMjlS06FiTxDn06hX1z1MhhZ6Tb15JmejXhwNL/0K1
         F+NqmBDBQizdQH7z8jBauy01a9GFr38s/pnmqP9AB1U2kcxi6gFFSfCXx+VSZ5RyEVaC
         Q6T0BezMU+fxDvMt9Ay7WX+myXAYhK2XPJGWqGFbfV4/jDOaHUHthEjzw9gHMnNhyRDo
         WfM6n+4QkYEZ+Lm/tMjxjEC4wOG01NQcq8lRy9xo5+kjes7hMCFuF25/FM2qyq6aU+jN
         h/PDSnNZ2EJgizvQoHOhdZIwy65Xdv/IEbF5dmrOvJrjFu/sVggd1GxKW1WoQWl+Qs3v
         NN6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WoZ9AK/QBP/ILXapXw87iWVYuZHsp9lC9irU9EiXJaU=;
        b=AjXrBaRJDokdMbdmDB9MHl+r6afkCp/mPYBTe0JKXtBm5JPDbRKQT/LlJKYzH8qjfC
         edn4NS9VNm5TsAp8MhGM05drZvo6+wwx2S/PEd1Wd2DozIvrVNKuw/l3j9ILlkdyqZ2D
         RXSQHWhPolsu2z1u8IQsBtPgptCzu9lQIUWp3VKTj1FUZt1CneouZPliKa4zUEai61Xe
         tySBC0rEjCXxMpfPRbRDTa5USbWdNyfjjzrwjDMMp8rV6L3HeD+uvCKdIZKjZt+XhilN
         S/tW4v+MGkXBMTdtrugDLVMu+Mrqd9qtjexwuOx60N6NbSRGwiGK139T3nw9+jalghEF
         he3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/UDkoxfgwydtlJbYgOwsJY2bDD/3KGo0Z1zX5umu7gzIBUsQh
	t3MYvISLc3iGAqEAmnWS8Sw=
X-Google-Smtp-Source: ABdhPJykIvWzap4zAPomKOCEplp45GC0VoGEHGs0sua/TSKATGYggBCGJmeAbniHmt3ozBF8gORJNA==
X-Received: by 2002:a62:d114:0:b029:18a:e114:1eb4 with SMTP id z20-20020a62d1140000b029018ae1141eb4mr16862502pfg.41.1605582157371;
        Mon, 16 Nov 2020 19:02:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c395:: with SMTP id h21ls767411pjt.3.gmail; Mon, 16
 Nov 2020 19:02:36 -0800 (PST)
X-Received: by 2002:a17:90a:4fa6:: with SMTP id q35mr2326850pjh.55.1605582156831;
        Mon, 16 Nov 2020 19:02:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605582156; cv=none;
        d=google.com; s=arc-20160816;
        b=gxtapDgU2xxBtaL0wMl4DIvEP8dOBWRWud9ZjwdPifd5X/KblFNTEdn+Zc+ywLwNhA
         SIXSUFS3LaMsyha2hKCz7A2JO77sG6pJt/9gCmQdRp/Ys0VEvwpFTXgUos2wi5NDbsJZ
         mvTEMdF0CZ/DmZtPrDRI8eLoy7Xbm1+UEDoD+8/dbWXPTk4SrxByP0Cb0sJ/n54RGrnh
         9Qa55bsILIlcdsTDC58RC9lSsKzTDVD+LFIILx7lEG3OQ7sYgB+CEY3QQWY+33rZS5ng
         COddt4EjCJHVJdR5YqnwaUM672Ss5vhfE0MoxxwIUHrBsxm2C1LX9KZWSoKiUnCkJuSz
         QhBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OrFb4zM53elIT7cUSmZjOKhggxTeko72lh8gYsva7hU=;
        b=UNFm15pFFPB841dkzGTPSLVRK6dvqmekGJiA5FvqKmjnXum6Ep7OJScO1btSuYyyT/
         g8NZKtc0kLpRAdGTJPRYBx3L3H2aUwHietVZwwYIRZWNxbhAU644luj/mooWPHzxgFG5
         +MOG/v/RCSo6po3QQR478lqqm3VRi79cDj65Puu1mZ6Z5yofk5pAPF7xmHc7WgpMWjtV
         FRbatwulZFjIVrTSZRe8n47Hdc6Mj4UBzAgsMLn/ObCWRHpojJH0+aBnw6ZNTYOcS4KX
         0aMzTuFJtmrh8xJY+NYB1N03wWFDRViwGH6z+A/8XBGU5X73WYGEG+FZdsToff0qRMju
         xrxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iU3kKuyv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id g4si101188pju.0.2020.11.16.19.02.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 19:02:36 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id 199so19187015qkg.9
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 19:02:36 -0800 (PST)
X-Received: by 2002:a37:6854:: with SMTP id d81mr17624635qkc.230.1605582156017;
        Mon, 16 Nov 2020 19:02:36 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id v14sm13948831qkb.15.2020.11.16.19.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 19:02:35 -0800 (PST)
Date: Mon, 16 Nov 2020 20:02:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] powerpc: fix -Wimplicit-fallthrough
Message-ID: <20201117030234.GC1340689@ubuntu-m3-large-x86>
References: <20201116043532.4032932-1-ndesaulniers@google.com>
 <20201116043532.4032932-4-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201116043532.4032932-4-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iU3kKuyv;       spf=pass
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

On Sun, Nov 15, 2020 at 08:35:32PM -0800, Nick Desaulniers wrote:
> The "fallthrough" pseudo-keyword was added as a portable way to denote
> intentional fallthrough. Clang will still warn on cases where there is a
> fallthrough to an immediate break. Add explicit breaks for those cases.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/powerpc/kernel/prom_init.c | 1 +
>  arch/powerpc/kernel/uprobes.c   | 1 +
>  arch/powerpc/perf/imc-pmu.c     | 1 +
>  3 files changed, 3 insertions(+)
> 
> diff --git a/arch/powerpc/kernel/prom_init.c b/arch/powerpc/kernel/prom_init.c
> index 38ae5933d917..e9d4eb6144e1 100644
> --- a/arch/powerpc/kernel/prom_init.c
> +++ b/arch/powerpc/kernel/prom_init.c
> @@ -355,6 +355,7 @@ static int __init prom_strtobool(const char *s, bool *res)
>  		default:
>  			break;
>  		}
> +		break;
>  	default:
>  		break;
>  	}
> diff --git a/arch/powerpc/kernel/uprobes.c b/arch/powerpc/kernel/uprobes.c
> index d200e7df7167..e8a63713e655 100644
> --- a/arch/powerpc/kernel/uprobes.c
> +++ b/arch/powerpc/kernel/uprobes.c
> @@ -141,6 +141,7 @@ int arch_uprobe_exception_notify(struct notifier_block *self,
>  	case DIE_SSTEP:
>  		if (uprobe_post_sstep_notifier(regs))
>  			return NOTIFY_STOP;
> +		break;
>  	default:
>  		break;
>  	}
> diff --git a/arch/powerpc/perf/imc-pmu.c b/arch/powerpc/perf/imc-pmu.c
> index 7b25548ec42b..e106909ff9c3 100644
> --- a/arch/powerpc/perf/imc-pmu.c
> +++ b/arch/powerpc/perf/imc-pmu.c
> @@ -1500,6 +1500,7 @@ static int update_pmu_ops(struct imc_pmu *pmu)
>  		pmu->pmu.stop = trace_imc_event_stop;
>  		pmu->pmu.read = trace_imc_event_read;
>  		pmu->attr_groups[IMC_FORMAT_ATTR] = &trace_imc_format_group;
> +		break;
>  	default:
>  		break;
>  	}
> -- 
> 2.29.2.299.gdc1121823c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117030234.GC1340689%40ubuntu-m3-large-x86.
