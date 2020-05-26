Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ7ZWT3AKGQEOX4JXZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA271E2629
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 17:59:00 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id e3sf8072367vkh.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 08:59:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590508739; cv=pass;
        d=google.com; s=arc-20160816;
        b=ILwgINUzPUIC2aXhZzNfDaQGGGsMxDnUK9m7tF38kxKwT5Z4zR6ZuzAVl1xGBVg4gu
         71GRhWN24ofUEvlSwG/ZsokNKXExq48P+kyd2oLkPxOB2Mpp8S27dQ3k8WAVrZALeMZ8
         Zw92KzlXLbeoX0beQ7xAOjSFyME4ZWAkzm4MyT1eU2vW+rr2uwnOiy8Lh+z46XisU+9U
         RbLF/jpj5kk7kfKONDGofm31x7r9J4BKd69BpKgfzSo3pFZwx2w4cKFx3iyQ8HleqDio
         15wiwjEyzHTEEn8CXDFr5qw59fFsFchf+gYC5G+iqg4IOn+COgb/tJ95Wopj7s6x1QKn
         snDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NI6+WXRmR9P5zqvfz51VCG5ljxeSQhvQbJkeMUIuiJQ=;
        b=cvbJeGToH8JD1ujZ2TcvhsKMkJY1QksevDJAf1BxXJ1EyDmrPpIc5iAdgxD3az0oyb
         Gax4OyKP9u70dmj03MClDIpBuqplOImVQcvRFGGN8he0uhXKlKLn7QIpjNiT+Q7XxJk5
         pbKiVxC6Y1SakYvHPcn21aRnhqnEc2jQjImq1Ct4PuprJyvhPnmT2jiJY0yfK0zUrYGL
         l60GgSE8vm0VhKbYiqh54wbhh7iHbdrAS0ypA1z0PEA9xqWn2v8X4HW9kyRrdyKPulw/
         Fo+eqGeixUum6eaVWzdr7g/ZoaEfHoM+dAnb0WiMjoCu5h/hv80xbEsdrosPI/2zVxLQ
         WCeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VdyQtTqG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NI6+WXRmR9P5zqvfz51VCG5ljxeSQhvQbJkeMUIuiJQ=;
        b=Pyue4Ia4fGQNWub4d6u9Hv2izeqB91HwE4x/JUvy4qNYWo02Mh9x31S7BrAbLkwRDp
         5JgCSJyDsyzs6FDKljwaHhXD9h5cdNcuyiUCsZjA0+jGRxRhsHGh/tcvtAq8LSYlTnKE
         xHzEVmBy2nNcwNUsDOkBUX0BsjXXkv/lNlHTrlpkIpRaNy8kx+EoVIiS+FTyw5upKnv5
         OXG43zlWu5MdwQfXeoWNJZdS1NbekEoxKWXCLdgyJQ+opNP0Ika4Nw33v6HaW59f3NJ5
         5RKpyna6D99YIm5Jg9QjFRlPx5JVAT4Rvi3avCB3brBXhBNP/zD2b4mfhdpo9aGM3IPv
         +J+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NI6+WXRmR9P5zqvfz51VCG5ljxeSQhvQbJkeMUIuiJQ=;
        b=fZJ7IfwtVltcxQtfdanKDWJMeOaf2aa1Hj0DuY3HqPA2IgeoL/gQnXckaL8CR6YXru
         mE/8BxbVly2yuRnokQyC5wuqNS8oPQwvhxJg14KCnUBQ6fiSy6pYKkFkjxI5gS9GiWDe
         N+YOXUo8ppLoy82nfqj3Y6GOSuotjPB6JqEjWAveFqGzhiAmVn/sTPx4d70uugx+zDs6
         ZztFuBiP+y0OW9g/OVK7hYBDOMotl3ce9TQJJ6ogCs4J+eQW4zPBrYaIhIS+4VORD/8k
         sPGeKivS+vPrFFrA7QiDsPKsDQsz47vauZkLtbOITNjY4BSuRJsZSXVS4u3dKlKyVVGT
         1AQA==
X-Gm-Message-State: AOAM532JJCrhvHbqJwBEMDPv1ittOGQ1qv8LnQq02Tk3+Hin6/Zy3Rc7
	izlH/c0lLz2hHYjxQEK11zQ=
X-Google-Smtp-Source: ABdhPJzTjf97E7NnDwHK++ARL1R8v9zEbYrYAz6rhkU3bCDwGIIzLyRNNo7nkuCWJ9+8tzqL6nASVg==
X-Received: by 2002:a1f:a6c8:: with SMTP id p191mr1486026vke.78.1590508739829;
        Tue, 26 May 2020 08:58:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:138d:: with SMTP id m13ls477291uae.9.gmail; Tue, 26 May
 2020 08:58:59 -0700 (PDT)
X-Received: by 2002:ab0:36d6:: with SMTP id v22mr1323126uau.20.1590508739476;
        Tue, 26 May 2020 08:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590508739; cv=none;
        d=google.com; s=arc-20160816;
        b=Zo/JfLR466qY4/R9fW06fWPRp9N1pLN06XJMh5fA84jkliDlvM2WdpCujTtIX01HFR
         wmG/AMHfb7x0Ecxhw2PNenQCnzfWi53L1L9LAKo56CY/6rVWocmDlpfFXZ+IpUbX2n4i
         XgcwMBcCwL34Y3VUonCoRM+UnNis5drBm7kXOObggU6XayppXBFNsUCWYtDLHlsazJa2
         1J8kd7PWc70AfSoveLvjDGAEOUZgdjbtx0oFQnXT4AJ+0iruk4mhGRAWaeH1NhMwGZL6
         IpowTzfWjdDb0U+wOTIVlZsH/dswTv5Nwvs2gAj/W6nKuEyzT61p4jtwCEimciyprpuE
         D7Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K7yc95hCwkWEN+v9r46J5YAvFPMk9mORHt815pdcg/k=;
        b=WTJTinumLcIjBcBy83V4dHnliW5vcmNgUvcS+tm0DbSqhSyoI206gmLsigylqfFK4K
         n7ihaS/HGxhUC4ZLv1+UgVhHYBgeEq9KpbKGfz5gyMTFmaDIv6IgFYY1o1zIE55zUtHv
         tw3flzFpzuxYFl2HHjisYn4T/FlbW0oKvxH9sh+JT4ul9vwOidj134SMOL8pUoqABGA7
         nMPj2mKmcqOrLdkmL5rfQ8B7xo3bQmMm+h7jqp1hu5+QwbDnjC7GOcerKW0/vqxHNx7W
         w8fBvOWGhEo/FmOuLob603V51k8CGEztIjjfa+MOPWjJSajtG5fBt7mFP8NMVgqgYVqc
         xZNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VdyQtTqG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j5si45110vkl.3.2020.05.26.08.58.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 08:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id p21so10247045pgm.13
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 08:58:59 -0700 (PDT)
X-Received: by 2002:aa7:8c44:: with SMTP id e4mr22491829pfd.108.1590508738615;
 Tue, 26 May 2020 08:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <10f4fb0b-1012-b0e6-af05-0aa5a906de21@redhat.com>
 <20200520193637.6015-1-ndesaulniers@google.com> <CAK7LNAS_PMz9r3e1UcuM+r18JC2KeM2RqGOms1u3kVzN_N1MmA@mail.gmail.com>
 <CAKwvOd=jOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH=Ujnw@mail.gmail.com>
 <CAK7LNARofo7wawEF4EcA2-wxnQkKw+WFoJ36EOeYFTUrthRfrA@mail.gmail.com> <CA+icZUXwNLG3ojWMhTuNkvR0AYtc1+BG6neOLZo56CB7ij01JQ@mail.gmail.com>
In-Reply-To: <CA+icZUXwNLG3ojWMhTuNkvR0AYtc1+BG6neOLZo56CB7ij01JQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 May 2020 08:58:47 -0700
Message-ID: <CAKwvOdn-zRA88QWc2EtLB4M9+VN_yLpzXXa+AGHW668sF2_z+Q@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: support compressed debug info
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, David Blaikie <blakie@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Andrew Morton <akpm@linux-foundation.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Anshuman Khandual <anshuman.khandual@arm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VdyQtTqG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Sun, May 24, 2020 at 12:48 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> *** The opposite is the case. ***
>
> Here, I am on a Samsung SandyBridge CPU/GPU aka 2nd generation
> ultrabook series runing Debian/testing AMD64.
>
> A slightly modified Debian-kernel linux-config takes me approx. 5 (in
> words five) hours of compiling and generating Debian packages.
>
> Plus, testing.
> Plus, testing.
> Plus, testing.
>
> In Linux-next times I run the whole Linux-Test-Project tests plus some
> FIO tests.
>
> Finally, I decide depending from what is new and interesting to me to
> attend a full single Linux-kernel release cycle.
> The last was Linux v5.3 which was the first release to be
> compile/link-able - with no modifications - with LLVM/Clang/LLD v9.0.
> For upcoming Linux v5.7 I have built each single RC Linux-kernel and
> used it in my daily work!
> Since RC1 - for me running on bare metal counts - checking QEMU or
> other VM is nice - but showed me that says sometimes nothing.
>
> Plus, I am building llvm-toolchains (LLVM/Clang/LLD) and testing with
> them (and report if needed).

This is a lot of invaluable work.  It means the world to me Sedat!

>
> "...if we diligently credit our idea reporters, they will, hopefully,
> be inspired to help us again in the future."
>
> These are some motivating words...
>
> My Tested-by is like a certificate - like a "Made in Germany" seal :-).

I love this, it is.  Maybe if folks on this thread are bored, they
could help me with a personal project of mine?
https://github.com/nickdesaulniers/What-Open-Source-Means-To-Me
We could use more German, and Japanese.

>
> Virtual Greeting from North-West Germany,
> - Sedat -

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn-zRA88QWc2EtLB4M9%2BVN_yLpzXXa%2BAGHW668sF2_z%2BQ%40mail.gmail.com.
