Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAHFYOBAMGQER5B72WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B3733DBDC
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 19:01:37 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id b1sf11908010lft.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 11:01:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615917696; cv=pass;
        d=google.com; s=arc-20160816;
        b=Di7WFly9Tmn4vzbGQlFZ0gUl5VX5CeZ9V2YctLad6WY0pxPN/5N9EUuTGphCLHn4cJ
         /BTETj0+IId983He4W0K8j8sSwYYvdOZEKcOhaIz5ryUHTKzz44/pzys26Gtf6EYxOnd
         otf31DbgyBYsdl9kXKa9ZnLTPdWMlDn1f8oJ2vi73TIxJ6IgOgCHRjZbA75f3b1Jhe85
         3AIC+AiYidNWw5Hh3JrcsPE7TpCJflDL4LVuMDs3vYByiwKKsoqXRZ8/2FjbSt4h4tf4
         ovL71rZoJi8eG7lhmXGDVXtfX/fDErATrUJm5NwhLiR0PLgBiFeOGpn9uhe9QfhyrsV/
         kHjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xIhMNuflssum+fEy/Pe9cOQEp6FRcwuCc7N6R3Zkd0Y=;
        b=jPGNBICYUSSse75bTKZ3nq+LoNu8NZHZ8A/bQIuG7/yYDU0WdeCw32BLoB+1YirsQN
         ntznOmw8spEBNNd4DGV/wswWm0ARSybLGjPj6RSNx7NA7Prn6/TcoHvpGhVi+QsXY1fz
         LlzsHALXVvMLXL0jXkpqt69uVJpGGF9s/Jr3mqLi2TUqww4TcwzxF7ZaEp8hF3vUl9Xq
         Uw5Tx2SQDf6CR1P/BlxA9YSFlGRdIGpiLgYpmGt6Zj86Jr+AyVpvcGn8Mcu2jzsd+2jL
         WyfBrsWFh1q+6y8ht4SJi+dBTPAWPr3j7pW2g3r5H6pWcXidtWm9F1GFEcPeYc/wRnb+
         cMQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f9LBS+K0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xIhMNuflssum+fEy/Pe9cOQEp6FRcwuCc7N6R3Zkd0Y=;
        b=Fn/TnGHv22LNhTen2hbtsY1d7RXlyMjLALfw0cRlDDK1Rx/CfrSyA9osd1dxrf49uH
         1Zqtn3TnsH4xxrvD8tZbeQrUj7TJfdRafBSelfc3Pgc0/OqaQRgZMtgGz1ZdXvU+MuBk
         JMXOby06WvyZmxwdoqNRjlAXx8OBb1I60zDwmDASyw2qCgDEqT115S2A53wi2ReK1iVV
         uxC73pvKhv22qS42hmuG4o0Mv0D+GUPIAJgRw0J6CRsAKBbj2xzUwgAsPabW8plIskI/
         o9U7rrScFkXiSO7McKD6JfLpi4W0axiaOgOAwNzBnk1NMRj6l5DEh7iPVwIC+c0Eq+K2
         z1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xIhMNuflssum+fEy/Pe9cOQEp6FRcwuCc7N6R3Zkd0Y=;
        b=R8l2nbB9hs8IsjruQfqIlMrGZ96g5F/727IqDZVTYDcjKap1HPmbj4DpQ12tBQAOKn
         3LWODPj3udBzPoYho8049fWhhsfIQqbjV5MU4SHGPlzkfxmXKMK///x7ybh7+ISN4FeD
         ljgvK0Djlrpe1xrtfN7MlCnMlakTSpedvq5qtYkLpC7omp2B8mizecsaGexiQCj5KvDx
         e9x/qMTPuP2XtP8Qu5bcDwWCOgH7fHppzoq29hlhQyG8Feq0GpllA0x95U/qFvjONw55
         4Wh6USoFXIHs4QQS7O3bdtBg6gExpxQa1I7+d5dpH+TqE00+1ULGaRQM7B2pH0XG59Po
         cbXw==
X-Gm-Message-State: AOAM531jlyKtIUTrSnbe7eGKsW+lWkZPx3aA8dodTxiLoGcI67etjZEg
	wbStJpI1s20Cx/HhxhokR9Y=
X-Google-Smtp-Source: ABdhPJyXDv1yKx4JHugxOvAhp0Sfwt2HVETfdz2UNcqi7YlZRzcHUkgKne5zBRIoUKzsU+EWbgMyeA==
X-Received: by 2002:a2e:9ec6:: with SMTP id h6mr3444352ljk.12.1615917696842;
        Tue, 16 Mar 2021 11:01:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a409:: with SMTP id p9ls4379025ljn.0.gmail; Tue, 16 Mar
 2021 11:01:35 -0700 (PDT)
X-Received: by 2002:a2e:730b:: with SMTP id o11mr3363574ljc.221.1615917695785;
        Tue, 16 Mar 2021 11:01:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615917695; cv=none;
        d=google.com; s=arc-20160816;
        b=EYoahbjcTeAe8cWEie8UjJLsHo70FZsAOJPx+Z6mP+3uMI950YRcPwoJbu6irA9HU0
         bzd5wbLUHTrpprw/ird49yFBncRaHWRS6oNlyRrIQFAR+/wIXKQgH6Bx1PiYrqRaq7ya
         00LGjBfuhalp9nA4GBBUhPE6lPfZcq6c3x/Feb49ILUNkebXc/SIGKTzPfoLNA4tJCzC
         +HyKp2ZvgQvFIhMSmHwwVzxqWIdUHrGRK9gQ4E/L5yJbq6hJ8zThUqq73JPfZSEtAujV
         MVk7nl4EVAqH39RR+TueaPn8FWb0oFkoS1wjPvJGLbOCdZuvR8dtumhBxq44XTVBDS/p
         Nfcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wBDcxnmnlcdmGNIzAX9LfTHLUlQAJdWJ9myTmotHrI4=;
        b=l/4YpgiyH3kztHxoItwZ8ej0Fv33aj24nB5t1nVkTRaRi0TL0J36ATcOdSBlagKGRI
         eMxT2aiohblCIOVMMbbDq50/K+JSt8fibicSyiAOtIKLWQUCOBCRfYnZ0FK6fzCQhb6w
         S+afSX1ARfNz5Iu88z9wCed6U70QRXY17B2IGvWRtVL2YS1xq3ZzOXudHjj+yH/jtA93
         PYPwhlJsqcAIRRbJ1m7wZ0sU/G/GJ2DdTvv0GGsIW13v1Qmgg3U+3ewNOzE0qJCmHIRX
         PY8nAHQffwCTRX+rjOqUv1iRm8f2jZoeo9mEllrDCiMEX0sUN0NBWsP09VDUXFKT91no
         2MRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f9LBS+K0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id 63si677488lfd.1.2021.03.16.11.01.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 11:01:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id z25so21677708lja.3
        for <clang-built-linux@googlegroups.com>; Tue, 16 Mar 2021 11:01:35 -0700 (PDT)
X-Received: by 2002:a2e:9a4e:: with SMTP id k14mr3505791ljj.116.1615917695303;
 Tue, 16 Mar 2021 11:01:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210316171347.14084-1-rppt@kernel.org>
In-Reply-To: <20210316171347.14084-1-rppt@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 16 Mar 2021 11:01:24 -0700
Message-ID: <CAKwvOdn1DBXPfYRFSPwgnaXG-h73cmp2L4uYFBAPP4+yOKoqow@mail.gmail.com>
Subject: Re: [PATCH] memblock: fix section mismatch warning again
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>, 
	David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=f9LBS+K0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Mar 16, 2021 at 10:13 AM Mike Rapoport <rppt@kernel.org> wrote:
>
> From: Mike Rapoport <rppt@linux.ibm.com>
>
> Commit 34dc2efb39a2 ("memblock: fix section mismatch warning") marked
> memblock_bottom_up() and memblock_set_bottom_up() as __init, but they could
> be referenced from non-init functions like memblock_find_in_range_node() on
> architectures that enable CONFIG_ARCH_KEEP_MEMBLOCK.
>
> For such builds kernel test robot reports:
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> >> WARNING: modpost: vmlinux.o(.text+0x74fea4): Section mismatch in reference from the function memblock_find_in_range_node() to the function .init.text:memblock_bottom_up()
> The function memblock_find_in_range_node() references
> the function __init memblock_bottom_up().
> This is often because memblock_find_in_range_node lacks a __init
> annotation or the annotation of memblock_bottom_up is wrong.
>
> Replace __init annotations with __init_memblock annotations so that the
> appropriate section will be selected depending on
> CONFIG_ARCH_KEEP_MEMBLOCK.
>
> Link: https://lore.kernel.org/lkml/202103160133.UzhgY0wt-lkp@intel.com
> Fixes: 34dc2efb39a2 ("memblock: fix section mismatch warning")
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>

Thank you Mike.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> @Andrew, please let me know if you'd prefer this merged via memblock tree.
>
>  include/linux/memblock.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> index d13e3cd938b4..5984fff3f175 100644
> --- a/include/linux/memblock.h
> +++ b/include/linux/memblock.h
> @@ -460,7 +460,7 @@ static inline void memblock_free_late(phys_addr_t base, phys_addr_t size)
>  /*
>   * Set the allocation direction to bottom-up or top-down.
>   */
> -static inline __init void memblock_set_bottom_up(bool enable)
> +static inline __init_memblock void memblock_set_bottom_up(bool enable)
>  {
>         memblock.bottom_up = enable;
>  }
> @@ -470,7 +470,7 @@ static inline __init void memblock_set_bottom_up(bool enable)
>   * if this is true, that said, memblock will allocate memory
>   * in bottom-up direction.
>   */
> -static inline __init bool memblock_bottom_up(void)
> +static inline __init_memblock bool memblock_bottom_up(void)
>  {
>         return memblock.bottom_up;
>  }
> --
> 2.28.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn1DBXPfYRFSPwgnaXG-h73cmp2L4uYFBAPP4%2ByOKoqow%40mail.gmail.com.
