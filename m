Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOG472CQMGQE543VVBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1081A39FE35
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 19:51:54 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id e10-20020a4ab14a0000b029020e1573bdb7sf13792984ooo.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 10:51:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623174713; cv=pass;
        d=google.com; s=arc-20160816;
        b=FL9W+VI9ffMdNYfggBSZL7/aucei9LAJy6DaqQHoMHEBKJuGxJBEp4K9db9SNnY1te
         eUxzMg+F6EA9ntp7Xk2CTZTzufPyo9z6qvLjBj1vTTvLTFFeHmFJq+obZryx2ty/3viv
         9lV/pOV4AG4YSWa+TLdZN7RZGTdQBOSIa05e5avcM8uwU65z5CxykWCoo1SXCg+f71w8
         jCutDpEwsV6JUBAoyAM55uj/zpXZSjuXiBaB2pbkwkA5EEafRh8D9z7Sq3qMXsZm+1pt
         mUeD9GiDQ9PaSlhbOhtGc35iFJIE7pYfQ8dkt5HuRFroFdQS7HCmTm6lHDuTr6sWrYSt
         oJMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Pd1/ynjRDbWCwyvc5Y47cogBe+KqKhIwrigyZY8UaZE=;
        b=S39JvZUt0zk8g/E50Ki+pmF6G2ECNPXCHxZa963t0U/N8emK1MwTp+DkgJR9GD0ir4
         lMhs0fXWfwKUcgbMn5/GIWx8v/ecupe2SRbXCOH18HcPO8kPcYPNhO2JEG5Zf7pXZaR7
         /cU47vtEy6UyHOGORcthqA3tmLEI+sWlpz5S1+OindyMkpYycDJ31mwBzjnW39uspgpA
         yW4nS/N8FMybWZjy5f6ORW03OPUvoLRD20csvif5d+ZlHbErLpxlA+8z2LuOuLXZvbwh
         feZo2vyyW22/G6yl2N/2aQQjn91PzmQEaN61t1cDq5B26RLZ/H2Eg5yH36dRA9AdAvaE
         D1JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TkO06OqW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pd1/ynjRDbWCwyvc5Y47cogBe+KqKhIwrigyZY8UaZE=;
        b=XcbsDwW6IaQYd2rhhLjc7sIkLVGRne8yktdVAFekNOEo4cIlmKOtjoUyc7tLGrLqTC
         +/Vvuq9zRijCHrzc0EXhGp6z0yq+KSlE0paVl+qnZOGzESXkEB+n4Ku4N7EbbDsPsdkj
         DGFi2Ms7QCrvyGnNK5gOVizNg5T4KdtcK8KUVCJ0B39RDvRzIOqs6hjXPWFRybE+AsuU
         4aISfJspgFsqBiARpbQGmR3I6PhPW/dLloy87775KacawclgQfwo6uTIGj4mZrxT6Cqf
         LV2LaOqdtJeQ8uSh/MwKcRuM/w3VNb8GCjPtwtlL1E7m0YIhMSd9vpwbIjPlZa1VJXCM
         F1Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pd1/ynjRDbWCwyvc5Y47cogBe+KqKhIwrigyZY8UaZE=;
        b=W0KaT2eW7T5YNUXQNJ/phd1LgG664P7IiyQdRDEF8LbWfGh6HD/2ZdUmgC9prH5oQ5
         1FSWM8eYvYwRCcy6t3Iwp1GJsANR5JqR9SmS1wPRhgG+A83McQdX/BclURKX966HS2fg
         iQzbdS6JoN9uJk4Css+WevAWX7AZvxHXkY9eTdXPzAitV6BhoKl7TlYAvqraChywZVeA
         XOPiH5q4/PxRF7GC3jpkotIiq7yy8C1vDR1XyAydqoaLc40tB+9l0lTeuYz0Btt8TZ0t
         VfoZsLy9lw+fJKzxMRm6Hu1AcLmfixKVhOycmfeouIMW/oMxIKCaI0buOKrJhjCOAXzz
         rgWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300Zn88j0X5O6njiQqau5wYFb0gulHGzfMHSrm9IopBMS27TRjU
	Qm9jai8nxTfRPWHa36awlMI=
X-Google-Smtp-Source: ABdhPJwhcD9xYdn72t/4jeujt6/vieWYAOGBACgctDOGkKC2gUbE2wvj67RqsoMwrVr1W1cvY0ZNIQ==
X-Received: by 2002:a4a:d4c7:: with SMTP id r7mr18589795oos.85.1623174713057;
        Tue, 08 Jun 2021 10:51:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51c6:: with SMTP id d6ls5943264oth.7.gmail; Tue, 08 Jun
 2021 10:51:52 -0700 (PDT)
X-Received: by 2002:a9d:644f:: with SMTP id m15mr19242875otl.99.1623174712686;
        Tue, 08 Jun 2021 10:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623174712; cv=none;
        d=google.com; s=arc-20160816;
        b=hAFcq0312InGn76s4asWfFfEzeJ7vVwdE2EghOk9eiXbb2YYBWBFjGs1nivIrmvX85
         EK7HAOQjsqahjeuUcDLniK8OrQK8NrXa0R6vIlMiPsIu09Rc2xJ+bWqefbZ5qYAS/6Ki
         KjKW+ukF+H/THdjd5zLgXjx4x4QC6fsLAb2ShQqLhqcDnRxWVBa9+ZniUo7T/VbYC3qP
         RsWvJsIYwGPLtre48jR1oA43st+AoAIvWi6w4FgZJyTVszmYWSa5b+3vG5+Nq9IUOPUA
         c2hnvscgitxo+Nlm0PXkdZbqybly1r1pA/zqgRMkzl5QU9Bnky8hJSzRiNCRDBEj5Pr6
         w1Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fci1oYhDGUOZ5NKH03jaZMp1ABjjSsrjnAKiaY9KaFw=;
        b=tRWHqsChqpVVODjZ2HIa3zwSwkbJEEK6S3kLSi+f0PRn4aSqYqELx8As++6RZKbG6v
         QwFqLCPgWzVyxxKdFgICYNgVjCiF49SYR8q/R2G3iHLORNxxtI7Sic2xaPsZY3rxnK/p
         SAC3wtsE98yn6MHnjZOb2xkrzxmcGvGrv2+pdKD3VEpBt70IIkjR0hVS/Y1Mxh58QkmT
         CGynzD4RZOF9P833Mhqr1m1+AoaFvlweNojOT9Z0SqmSVWiND4wVrTwPp1F10HBGf9b5
         d+C8jKyEJLxQ8w+RWK64WRg5tOQWKFq6rP63gW33O21HNrdLOb7m83eT4RbEQT8VMOU0
         PM/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TkO06OqW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id t15si1085330oiw.4.2021.06.08.10.51.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 10:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id c12so16327329pfl.3
        for <clang-built-linux@googlegroups.com>; Tue, 08 Jun 2021 10:51:52 -0700 (PDT)
X-Received: by 2002:a62:7f15:0:b029:2e9:c6b8:516d with SMTP id a21-20020a627f150000b02902e9c6b8516dmr1111480pfd.52.1623174711876;
        Tue, 08 Jun 2021 10:51:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h6sm11379313pfk.40.2021.06.08.10.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 10:51:51 -0700 (PDT)
Date: Tue, 8 Jun 2021 10:51:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Tom Stellard <tstellar@redhat.com>
Cc: clang-built-linux@googlegroups.com
Subject: Re: Recommendation for LTO type (thin or full) to use for Fedora
Message-ID: <202106081050.623BC5C44@keescook>
References: <8aae1be7-d9bc-8a55-0bbb-0d94e6719baf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8aae1be7-d9bc-8a55-0bbb-0d94e6719baf@redhat.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TkO06OqW;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42a
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 07, 2021 at 12:36:23PM -0700, Tom Stellard wrote:
> I'm working on adding an option to enable LTO in the Fedora kernel builds.  I'm
> not sure if I should use thin or full LTO, does anyone have any recommendations?
> What do most people use?

ThinLTO is used by Android and is much less resource-heavy at build
time. Full LTO exists as an option mostly to be able to a/b test results
and bugs. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106081050.623BC5C44%40keescook.
