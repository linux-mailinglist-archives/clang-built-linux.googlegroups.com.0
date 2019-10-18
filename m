Return-Path: <clang-built-linux+bncBC2ORX645YPRBQHEU7WQKGQE4LWIZ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id C716BDCC5A
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:11:29 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id w11sf4142222ply.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:11:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571418688; cv=pass;
        d=google.com; s=arc-20160816;
        b=dwkkOQl+oO6WxQO/g9DymEEmHWG8UiNcRhhhsJTtYWXq4wigDOOlb49bqjzfFIE2U7
         Nklouiq+94W98+1Ca4V55DmnkXolz7x4ImxSLo1rqVqnH0dJUrdunHRWX0m8dUkvV9ac
         we3aMWQqt4udHxATT47FVSxfCi+4v794rKTVAtM+w1k8IfDfLW4TgFeuXjNByV1WjjxT
         ybl7yRp4xT4JwOUVme8N46uxp/Bg0ot6zZFAWuPoXHCef5AbzUtABtoIqdYp+l6Po9Ed
         XtUhYVIpLvwvA0MGFTAGLFly6gTrrDHya8A8T7JdKR52rvHIP96WpVeK7AKmb6hyrUvy
         BhbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zHRcOp2m0AvjPiscvtetWEmdcvTCdoCisf6W4iCJhz8=;
        b=SKUz5A4OPozYOB+LPwGAp8xXpQ1OoYMkIk2mq0+/a7v4tk9o1BqK3LpUxYJINen8ZM
         k1OWwA2/XXo16zPvnU+m+vPZE6534nnJ6ZZG9HLnoTfhTviwrq+3x8wdeeGb8J8rNGNJ
         dbDJ/Me+7UWFqCrKeF1kh1fUAEoUpm5KMhQklRAXpTMxA2Rc3yAhqRokcZVx//HpZwTk
         HhDjlhk74Lol/8mnj+HrOGYX95DfJjn7sSiC/2gVkwcK0KvHXl+krUU+ZGHfSUfiCaro
         KeE+E8ko0GsIkurJSNWtAK2JeRXyvkOUIUE42v+WZMTlR0r8E/ISmMtKtq7rlQ+KJFcI
         l7zQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="NFaKn8K/";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zHRcOp2m0AvjPiscvtetWEmdcvTCdoCisf6W4iCJhz8=;
        b=LadE6h0ALpzMw2C1cEJdoY/jVMC92y8NpPPlwdvIQxpVvbilpHVd0I/zOQ69b6Nnco
         XRxeoAQDuhHTOJY+N697ijJoMRYrESfp9SltMhruCD31UKlrKBEp0OvRcDJN81QSWgvX
         2KRSWxtiKg/3v9bMZGg3cg2zIRmsztPQb46M1HVKIquJHZZfs2nloFK6YNcicHUMsCqp
         OI9UxKnXmD1VZt+XqjK/uZ8Fq5ezdO5jdImGbwPZhRZ2o6U+GUof/bDfmEev+ZIBdjH7
         UBKtHQnGQZFdZvblhRziBB5uf8FwcvdYXmttcrSEtwmUWgpx2XXO0FSYmwF2kvm9HGhL
         W1pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zHRcOp2m0AvjPiscvtetWEmdcvTCdoCisf6W4iCJhz8=;
        b=Ops+s7wb8urgI34OidRYQ7/pzFuYgm7iB2/NnQ1lxU+TvthRklFa8o85Ur+YYASRKm
         aitztNIYsxjiOlqoq+8zyd2r+NCwHdKQq6A8oUc7UWyWX7z1Fet4nGDMQq0dP7ztVLng
         SLZ4Sm5leL4iskM+IpsJNmY/hm/tudXhWf9CRY509uF6moM3B1YrdTSAff00Ba0anOqG
         uezSknGta7ddW3fweDmcTV25cybCGAOYa8+pMa4ffjXtl/Gf22RRmsHB23QM/Anpk5zJ
         aGHJzUdteIWqA+q5jc0r1PvUqArGJetsRZuCmdWm11aNxFiVlQq5rYZguRo/LCjv8yqd
         7WUg==
X-Gm-Message-State: APjAAAVeQsvyjE0wTTNEjfiULaAg0wiPDWQ38B61wxFHwRAKuKnDBuMG
	3nrkqjweW5vreB5m5XV9Yfk=
X-Google-Smtp-Source: APXvYqyTfV2VMQjAA99qZh3qOYzE1hesa1+avvivlfEsJdlArfoRAGDTNAl53d4Iu4uCqlqB1wnsmg==
X-Received: by 2002:a65:6903:: with SMTP id s3mr10911899pgq.195.1571418688413;
        Fri, 18 Oct 2019 10:11:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ac93:: with SMTP id h19ls2008122plr.6.gmail; Fri, 18
 Oct 2019 10:11:28 -0700 (PDT)
X-Received: by 2002:a17:902:6bc1:: with SMTP id m1mr11124656plt.67.1571418688007;
        Fri, 18 Oct 2019 10:11:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571418688; cv=none;
        d=google.com; s=arc-20160816;
        b=a9AbOx4i3yMyOdQ21gYYna0lAk/JukiHfxrsAmbWfziwopL0TExRDMhJg8HT0b19Z2
         q/ewrPnjWWCbCL8l7dXpBJPPjV5Z0P2K7VY6pFz8zVw/YtCxq+jeewZrdbbcaUkvinN8
         xV4Fhdxlkk7eNf1k0fmdIlAd4KqgzVfFG7oclEz447rEEGYoKOLix3UjMLpn06Z9lKOd
         W2FcehEI7OcdvyPC9K01jbRoZMNvPr3SugTcEjVWGd/KVr2hK6oIU2cJybzORn/IF7CX
         nLRVwRjLGPD4HhRhGMzJjboFfFG4rdb1hqu7NnDyuW/JEw5jMRp5g3Y48gRB+LJDm4hG
         zz1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XATsmiiQ65kT4ODqJ8G67gOZ75F3gzeYi1y9XLQaIlM=;
        b=zMPz7oR6CdjVPOn67afWUj4X66pypBVfbGxzrwEF8oNAfxa2JBEP9WdBNSW9nSU8+z
         eobbQFX75B8sJL8Voq1PIK/ZffLu4f2SZcaajeFs5dAfDXVaVmEo9ww6dYTi2kRa0ko3
         VOw5a+PS7PoP0Tj6hcvev2sU4UVD0yDXkuOe6vWIFlvAelQ4GWqPh7AbiwqVas8ZiFBt
         F7hZHv7MZqAyVDL261Jko2xzbfOarLdobWLHpVHJg2G0meuVIZQiBi5vgZfjmoGrjjDx
         qMCMIDFJsW+CnJSKeEyunxbSQfMjCEdCOdXHVntNUe6vDex2pF+S5af3N2dpQFS3Po4m
         E1PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="NFaKn8K/";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id d3si296463plr.4.2019.10.18.10.11.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:11:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id p13so4545472vso.0
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 10:11:27 -0700 (PDT)
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr6025118vsp.104.1571418687239;
 Fri, 18 Oct 2019 10:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com> <CAKwvOd=z3RxvJeNV1sBE=Y1b6HgXdnT4M9bwMrUNZcvcSOqwTw@mail.gmail.com>
In-Reply-To: <CAKwvOd=z3RxvJeNV1sBE=Y1b6HgXdnT4M9bwMrUNZcvcSOqwTw@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 10:11:16 -0700
Message-ID: <CABCJKud6+F=yhTo6xTXkHhtLWcSE99K=NcfKW_5E4swS4seKMw@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="NFaKn8K/";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Oct 18, 2019 at 10:08 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > index 333a6695a918..9af08391f205 100644
> > --- a/include/linux/compiler-clang.h
> > +++ b/include/linux/compiler-clang.h
> > @@ -42,3 +42,5 @@
> >   * compilers, like ICC.
> >   */
> >  #define barrier() __asm__ __volatile__("" : : : "memory")
> > +
> > +#define __noscs                __attribute__((no_sanitize("shadow-call-stack")))
>
> It looks like this attribute, (and thus a requirement to use this
> feature), didn't exist until Clang 7.0: https://godbolt.org/z/p9u1we
> (as noted above)
>
> I think it's better to put __noscs behind a __has_attribute guard in
> include/linux/compiler_attributes.h.  Otherwise, what will happen when
> Clang 6.0 sees __noscs, for example? (-Wunknown-sanitizers will
> happen).

Good point, I'll fix this in v2. Thanks.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKud6%2BF%3DyhTo6xTXkHhtLWcSE99K%3DNcfKW_5E4swS4seKMw%40mail.gmail.com.
