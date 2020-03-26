Return-Path: <clang-built-linux+bncBAABB6FV6TZQKGQEBJQVZXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A91194A44
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 22:13:29 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id z62sf5783993otb.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 14:13:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585257208; cv=pass;
        d=google.com; s=arc-20160816;
        b=EH/dzb/QJp5xW9d5QHZdECxZ+bkFOoN96BGGEa3GVNKlaZ1hkSThe/0iYJKctlPphC
         a+UUFeDp0T7ezOket9apXN+GMpMfMx2VH/LKVwo6ZJXOF7B9BM7NOBHr6XXCoAykCBQl
         DlU1nWEmBThP5T44zBUxVyxlu1lXYYoFE4/n2jaXAb6Vpmh/wV1HMNohWBXWyTiM1QIp
         vPio/ugc26PwZEelGkhrbAjKDL2qO6eNewzAlV33+6YQVZpNG6C8Nt6XVsHgaAVhTr2g
         QI3/TUgPp96WyaHDiljtVYk/EMZGomTkdtElxrGK+kCS2NEt8uL5FGrPwNqPhR/eI0lt
         bCpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=/Av9J9x9FlgQKbeHeLlILA+cYMmVWwaDWIFuRnRNJwY=;
        b=O8UNHmqcLBNEaxzpr8LzLcUmiz6oVEFJhLygQqHNWlXHdXTg6kImhjKyHFF7RDNxgA
         feUOec0O7+iGBTUd589/mxPy7zMjiYEb2Y1nSNoYz/RXHYPNnQj6kmosWTCNgOwZkKDc
         XtqWnh3bDP2sYZFVHfZU4keD2r1mxAz4vfTSdEuqdJSHJM8uPf7bUAydAzHLNcsEGfdc
         mTWtj4DgoB4Wic5Cs9m1xmSCy1kRQjn/9zMwRjEtgaE4fWe1RkmDdT0NOuAEKzozWTqv
         26QX9fn5d6y/odvWzlWBVr4gVcAK4TriA8tiiNEubpQFkhWhfn2Pr6oUvizAU/9G4Swl
         WrGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=02ax5uD7;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/Av9J9x9FlgQKbeHeLlILA+cYMmVWwaDWIFuRnRNJwY=;
        b=RwT0Y1EnTRGwtDD5CacG4hlA4+hk42ZHvIdsdwS6Da1yrZmqIsCsy0q597gpC86Cjx
         nz1FR7si2i6kTwgSJ/Ek6e1xX7DtIWf3S3lr1wVC2hqhG8QlEi1lTUu6jpVJIgZyq/PQ
         QFn3K3s3blCf/1a77Vzq1Ti9qkC9v25oI4sV2a92zNAxgKB6Z/r7//u3PrxNNENZuQfJ
         /bbx7fw6oQ8TflW+uHWbUChdtbqM8b+K1j7j8nmWTK8XTG+0h0l/DHMV6xXOLYrZ5bkf
         GvzVlDAG9CLsXg4KLSnciOF0FFPx9kXkTV7RzmZaSP2LXIZqt/APkYRkW45cZum8VIU8
         w3rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Av9J9x9FlgQKbeHeLlILA+cYMmVWwaDWIFuRnRNJwY=;
        b=OY9OnCzAWINy/Ey8Fh9s74p+KD2pEx5wfocn9OnGBhgoT48/pOl09v3Am6DqNl1yIF
         258ikBTjUPgQBK86B0bf1QL+QqHg8reSkjNw+/bN22CxgeFhNQGU8aA5Q5kJ1IO99vQ7
         olGfCyiqmoQrjxwfLMOfxGuU0VWn9YhV8WgzUgBS+GUsEA6gxeUdfj/Cad5vEwObHUDK
         Wr9Bty0X38Mf+v1KXHCKZoo0bVcR7dSiXB4WFi9vaFXq9zRxZ20DAC7VRUGZStKmcDCD
         lGBBPrEPwWG0xkcAJ23tJvAYXz72QH89yKQGIi4hh4e7zgRHH/yxIDHZC6mw3IiX8AxY
         C2pA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0BxTRhHd8CsD4bTCkHdc1eJwQKkU+oJlHktLoKUtMgmvpq/zE+
	wNjK2nytricqcObpBufVT1Y=
X-Google-Smtp-Source: ADFU+vvlQBb14ekZVkRd4fRWrk2pJZ5ZsyIGylAQKk0Ptw2OBenDx6NSJ0+4WI2YGYT+6hTrmSQ2GQ==
X-Received: by 2002:a05:6808:56:: with SMTP id v22mr1689445oic.116.1585257208594;
        Thu, 26 Mar 2020 14:13:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:49cc:: with SMTP id w195ls2475483oia.10.gmail; Thu, 26
 Mar 2020 14:13:28 -0700 (PDT)
X-Received: by 2002:a54:478a:: with SMTP id o10mr1802196oic.45.1585257208294;
        Thu, 26 Mar 2020 14:13:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585257208; cv=none;
        d=google.com; s=arc-20160816;
        b=YxIYlSNrwFW46ruLkoLwSsyT/qsyWN1ODMUOJZJGVCrjJfKK6Kleoceqa97HHuid/X
         ZngP6zVLEOUm62SG3Ok6MhGgs1j8/qj5PXcFgkMtVjhb3DbKmKvsF1wjB4Qu3kwtjA3K
         fUfHSaOsOUqXYJIdBtw/gwxq5C1+2lx9KsDcgByJiqKWwediSsq9GpSLB+Jd5ko8Gz7+
         IP6Gl+oF1r7zLCLcxLAsyRa4YTvTk3rRgDwumWtj6BG7f3te4Z56bXu3FZu+k9ZDcJa1
         IDHMyPg7YnXyFNrFJoR0CeV2Gl+qNfE4hSnbVO0flq2HMiZ5Fbnihrit37qONhXix6Sa
         JmRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=yUWTDQTSG+CELwmMJY3M4PyyjvvHxAi5WzaSE/lWqWs=;
        b=yhv37preoej/USJ0m5zi8CpaiMVS9+MEqOpTTew6TbLULNwBp8+EYOonCwkcfUGNBk
         l34n4RG389Iikw7vFOhzwviZA+GUgyCUulzBJHMp4a4lfFpTuWBLW+i6WTbSNomV3uL9
         QZQvYGWaVEY8wQz+SHKY+32XksI4SuZLgShd5PJImzfQTBEa94bhyNOWsj3aX+pHqIU5
         N5IzDZ+IagQH5mJXuH1Q8O6r8OamYHyT35B2jr5YJAp8zydpFphArtqZWVUZb1R4D7Dr
         zQASQK5AkJ944S2vTolz3VBykjQjWEMPpOS+6pRNMnD0ueUPYuQqy+n/giZ67IsWIYW0
         82Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=02ax5uD7;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id a3si221324otf.2.2020.03.26.14.13.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 14:13:28 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 02QLCuXl018193
	for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 06:12:56 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 02QLCuXl018193
X-Nifty-SrcIP: [209.85.222.48]
Received: by mail-ua1-f48.google.com with SMTP id g24so2722570uan.10
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 14:12:56 -0700 (PDT)
X-Received: by 2002:a9f:28c5:: with SMTP id d63mr8552249uad.25.1585257175580;
 Thu, 26 Mar 2020 14:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <CAHmME9pnAvgErYkcvvdakvfMY8ZGKfwHHNYzpVtJ913Tgp16CQ@mail.gmail.com>
 <20200326092213.GA100918@gmail.com> <CAK7LNAQ7-wpm+g=cXeJ01vGrO1nVjfP-ornKm=SXoDEn4x+DjQ@mail.gmail.com>
 <CAHmME9qnWWYV+eWVmx2yoADB9oecZKj=UgLkdSHe_=MnxedtSQ@mail.gmail.com>
In-Reply-To: <CAHmME9qnWWYV+eWVmx2yoADB9oecZKj=UgLkdSHe_=MnxedtSQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 27 Mar 2020 06:12:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQNx0TxWGCzNM-2JqfEJuyDKnLMcqJv8Be_9_Ty5wv5Lg@mail.gmail.com>
Message-ID: <CAK7LNAQNx0TxWGCzNM-2JqfEJuyDKnLMcqJv8Be_9_Ty5wv5Lg@mail.gmail.com>
Subject: Re: [PATCH v2 00/16] x86, crypto: remove always-defined CONFIG_AS_*
 and cosolidate Kconfig/Makefiles
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Jim Kukunas <james.t.kukunas@linux.intel.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        NeilBrown <neilb@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Yuanhan Liu <yuanhan.liu@linux.intel.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        intel-gfx@lists.freedesktop.org,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=02ax5uD7;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Mar 27, 2020 at 5:46 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Thu, Mar 26, 2020 at 2:44 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > I collected more Reviewed-by and Acked-by,
> > then pushed this series to
> >
> > git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
> > kbuild-asinstr
>
> But not the version of the penultimate patch that Nick ack'd....

Dropped Nick's Reviewed-by.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQNx0TxWGCzNM-2JqfEJuyDKnLMcqJv8Be_9_Ty5wv5Lg%40mail.gmail.com.
