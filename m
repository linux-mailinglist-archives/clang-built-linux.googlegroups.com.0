Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBA6PRT3AKGQEYWU6MUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4241D8C3B
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 02:25:41 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id f15sf2752719pgg.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 17:25:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589847940; cv=pass;
        d=google.com; s=arc-20160816;
        b=ADFocqcaz6e1dpnjlQ2pLPr0CSkZGpHvpRFlgl4Q/ibz9TDNt4oTn4h9FuTdNOh0pT
         0RmXcSnyN02F+ZJ9E6E5SlhBlmC479rP1mBPT5t01eaGmYSVP2jG1Tt2eKQqQyTxwu61
         E0yLT6XER8R+K/8moDIgyfv9+YajqlNrdBNK2QZ1/I8tLNt5e5xENvGZc1fxY4jFUVc6
         qV3u4wHDpLDu0vEaoy+ETPmgjgw2C9qiOd25LkC3f95356WEBE+6uX1X58yui0S1GaWp
         CyQpHWJfSO6MvGQbEfm6mniVWUUTVgNslcW+UJNTY/N5q3rHsaX/RSq5aH/lKw/1SF/J
         zqCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Fr8iD9JsVu5JnfbIipEvdpgAxZ8cF0C4fp9REHdipn8=;
        b=sIUbXlUchFDC5h2Yw1/GpmvgPU1XK0SIWnaGvFqtV0wtFu5gC3nGk/dOA0kTSql0XE
         xx6vqPaaxLBUIbkySC6HONSluyNev0kPTUdHAIQ8djKggfbIZQEIkiUAmLKulx7DT5yZ
         yb4ahEl3hx9Vd/HRr8vcqZgw72NNk1ryDeN6iwTa4kZuEpxL+CrEbVvQx1SkpRkgs2wV
         jjiUP7IMGoafMrbzlgkx8z3RRMJ/OUTRyqpt21oOeEXYzDMCdAYDCi1su+sZf55APwUN
         E3nl4CelsDnPsdQymuNBz3wPUqOIHpSYvbvCtCimnPkJbOBFH6d7hwhUT9xMG6PCwNrH
         CJiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PuB7x/uV";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fr8iD9JsVu5JnfbIipEvdpgAxZ8cF0C4fp9REHdipn8=;
        b=HeqIJECRgOL/AS7W43cDFnoX0oTkLq4xgtHB8zTN2dY/ugrrmS8jLlPntnp5XaAIMl
         eBLo087Hs7qf3uuVAPGSRD/6cFX7vgZo1bsNBkMH8A0HtpRoReEUvpqgTm664QNBNSdP
         69yRt7SbY9ZVCs28upbP9lq/d238eEvxmkzSsyPuXoWJBYeztp5UtNREKg4Xan/peYBU
         XT4J+B883x5Vu9/7hzL2sek6tWNXiKURqiBNSNNcXXKZXovdPk10MI9ma9aXuFB4BXxP
         G6Ln1Mjd5/OOcyzrNs1M7u8s+LvP+E5gcZUYIeXFL2dUuKI+bmPSYhaCsy7oaRld4aCL
         9nRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fr8iD9JsVu5JnfbIipEvdpgAxZ8cF0C4fp9REHdipn8=;
        b=dALM6JYWzqNTV0zSYxXKhktQGlt/FAzz9TB9FppRRoNVDaAwhxs1oNDt6ldrY+bjZ8
         gK+IE29nhwzHTZa/vcAvKy2cP/lRdANU1Pdws2yc2jju+nqeY2B+ZUOGP654Q96drfRR
         hEB2FjzSrBAxKMZeasvaL5yVhR5/2ssVj+R/Uw9IHzzdE3yGU+epU9KjKVJV2BHx+y5G
         epbUsf5tooK/LGTR65W7qD08MScs1EGk0PG4a/ZadfzvDZ25yU+atazd9ao9ucUb+PE6
         AXUKq4aPIF+9u1oHg8HySaD/SvJ7sFP/rhxa9VlHB6YOiOKpeoTT66NRfVMY+J8QoFsA
         PnMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fr8iD9JsVu5JnfbIipEvdpgAxZ8cF0C4fp9REHdipn8=;
        b=ednUIASfSPh1ZJ3thKmOYNhoDI2gSPpQzYlZeAJntg1+J8ZDUhIoK3HXbDHR3IkFG9
         otLHhiTayum2VQXat7zF9yPrtWWCZ19tsatTcY0b+FHWokue4cs5Dvut4jrK7oJR0E2b
         dGejzAYiqLOM/SxEsZX93tC/PEvgqHmhTyuyeXJmNI+fX3HrS77W069+MLGY0RIegWAN
         vhGhx8w0AwXy10Z/2/HN0nIPnFQ33CvBReRzoFR/NjVSPH0oMO1FO7uueDkzrghZHMsB
         RC9k2oNvjGg2zTjQvmNRCnf6Blj0ktF/cZbqnotAbYvoy2NsNG+XkOHTmVrUyqyypJNG
         wpCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311XGCrq5Ec+Wkr9IGEByIejmmzhe4fK0ML6Xm9Qxoz1neg3qel
	Bfoygdpe8dagwUygh7yKL8M=
X-Google-Smtp-Source: ABdhPJwQLle5VVICUFZwG8Fxwe1vdpXo5acnClIbk0Xxw3KhmCVUFx8wboabPM6lqcQq0Xw4mKa4+A==
X-Received: by 2002:a63:444a:: with SMTP id t10mr3814380pgk.149.1589847939919;
        Mon, 18 May 2020 17:25:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:55c3:: with SMTP id j186ls3628288pfb.6.gmail; Mon, 18
 May 2020 17:25:39 -0700 (PDT)
X-Received: by 2002:a62:6dc3:: with SMTP id i186mr18796406pfc.12.1589847939455;
        Mon, 18 May 2020 17:25:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589847939; cv=none;
        d=google.com; s=arc-20160816;
        b=vstMd0aZOcDGkzfPEUaymVjVEml53bpc2LosMr7CWbgLuVnLHqxlHeQ8znj8+ygUYR
         LTB/7GMopClK1nI1U4HezEzOfflNXlF3rl4wp2xTvH1DX6S/Uq8YRf+WCFj1FRvGaUzE
         +KVG2VAi/rJvzJ0GH/5EIB152RSOlqmfQZTkQAcVLF2ZNmmsKqZoKuE/WaqJ26rLC3n/
         hizSgDrbeN/aNn85OsKGRM089CktFbx1IvMNNSwyN77+ZZtOMckSU4dnDKg56bYzzUji
         WAbQNeETEAni25Vr9mEMzboylyA515ZXqFA+AMYBZFaWRr5zEXMiGis6W7jQ2WIWaCle
         kwOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6nQAIsGmbBiNV1zSsJWz0TENOrH6776bbwZuF8Trr/w=;
        b=BDcYTd6G0sOZjm9DmPUB7quYIqNhJWvp0BsUA5+AeSt8/1mo44gqyTtSrUZ0mmw6l7
         wzCYIN/9NKS9zmi+dlLu4dMI9JvfTGkGgnZ0rwryownSId5HAqKXvuSM2+Wn9RtDhSfY
         FLpgX52b38UPi604j8Q7Q5rQ1QoLjpkNxIKa0lQImWL+1DtGYqwsaYMSF6d8F5yRO5WX
         9MjOqPQu9UPLGCi8k3UOzOwqzccKcr4dMTL6Apg8nctGUq5OVZNwl3hLLuPm/xJnyBY1
         BefIRMHWCkGYlOusr2HQsMHZHiiJZHOgru0xPA5XPwgpNpxX3D+UfQmBDpt15usJySO4
         Mz0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PuB7x/uV";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id q12si355007pfu.4.2020.05.18.17.25.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 17:25:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id c24so9776956qtw.7
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 17:25:39 -0700 (PDT)
X-Received: by 2002:aed:24a1:: with SMTP id t30mr18426331qtc.93.1589847938662;
 Mon, 18 May 2020 17:25:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
 <CAEf4BzazvGOoJbm+zNMqTjhTPJAnVLVv9V=rXkdXZELJ4FPtiA@mail.gmail.com> <CAG=TAF6aqo-sT2YE30riqp7f47KyXH_uhNJ=M9L12QU6EEEfqQ@mail.gmail.com>
In-Reply-To: <CAG=TAF6aqo-sT2YE30riqp7f47KyXH_uhNJ=M9L12QU6EEEfqQ@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 18 May 2020 17:25:27 -0700
Message-ID: <CAEf4BzaBfnDL=WpRP-7rYFhocOsCQyFuZaLvM0+k9sv2t_=rVw@mail.gmail.com>
Subject: Re: UBSAN: array-index-out-of-bounds in kernel/bpf/arraymap.c:177
To: Qian Cai <cai@lca.pw>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>, 
	KP Singh <kpsingh@chromium.org>, Linux Netdev List <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="PuB7x/uV";       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, May 18, 2020 at 5:09 PM Qian Cai <cai@lca.pw> wrote:
>
> On Mon, May 18, 2020 at 7:55 PM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> >
> > On Sun, May 17, 2020 at 7:45 PM Qian Cai <cai@lca.pw> wrote:
> > >
> > > With Clang 9.0.1,
> > >
> > > return array->value + array->elem_size * (index & array->index_mask);
> > >
> > > but array->value is,
> > >
> > > char value[0] __aligned(8);
> >
> > This, and ptrs and pptrs, should be flexible arrays. But they are in a
> > union, and unions don't support flexible arrays. Putting each of them
> > into anonymous struct field also doesn't work:
> >
> > /data/users/andriin/linux/include/linux/bpf.h:820:18: error: flexible
> > array member in a struct with no named members
> >    struct { void *ptrs[] __aligned(8); };
> >
> > So it probably has to stay this way. Is there a way to silence UBSAN
> > for this particular case?
>
> I am not aware of any way to disable a particular function in UBSAN
> except for the whole file in kernel/bpf/Makefile,
>
> UBSAN_SANITIZE_arraymap.o := n
>
> If there is no better way to do it, I'll send a patch for it.


That's probably going to be too drastic, we still would want to
validate the rest of arraymap.c code, probably. Not sure, maybe
someone else has better ideas.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzaBfnDL%3DWpRP-7rYFhocOsCQyFuZaLvM0%2Bk9sv2t_%3DrVw%40mail.gmail.com.
