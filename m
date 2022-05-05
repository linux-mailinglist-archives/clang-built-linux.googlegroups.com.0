Return-Path: <clang-built-linux+bncBDG4DXNHV4CRBXWW2CJQMGQE232SFBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B3551C9AC
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 21:54:07 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id r186-20020a1c44c3000000b00393f52ed5cesf4950945wma.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 12:54:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651780447; cv=pass;
        d=google.com; s=arc-20160816;
        b=fpX7oLiLxpFGnIhx5QvgDW+4sMYKL3f7hwUgE0RUTedQjzRmFnLaNxFCOmdmlDNabh
         MOlsvjGGXdNKcFgajQ4sUq+5q4d4luVTdHLsTLTwLPJPBGkLR7ZtmOtNKowqrWuOa6A0
         m95S9K7YU8HJXt8MnkuQ5lmdNd+/UXVHUWI9gKjyvtyMcVkgEl1Y1Lt+o0ZG0IkYya3H
         y2phSYybA59b2nIzFeN1teIS0plcmrLmBZv4hFPZHNLaRwXEDOTlYMyjAQKVUA/Fef1m
         85t1RenD2G0gbv/XAeyjaVKANDqNTb8x+mJOyhCLRVond81USoxTbnfVBut89HyUHB3f
         3s0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SROvpFGV4WxKkZbL4Ex9FNFw6LYIcz5d0x0sZAwvSmQ=;
        b=KOP37Z60QTjH4Rk06csiEyjgbUI4ZJK/eA0Z2wVaNvbn201j9ZC0tslNUFTICRdHaJ
         alINt2J/XCPExWGVYkfWCiC0VJCmBtXsHA5RoLVH+hus3aXuZJpGEDYxnw4gx5VC8Zk+
         CRIri0/Xdc9pmGutjWdaewETrR8Ee5+8lvdPyOBXKjFf6paYXJI8unYgQUeRKzLimh+T
         tQmH/RW3lDb4sEi/fsIOf6vVbwIqXISKX7wLjkiIH2dMTo93AR7gKGt+u2mgXZtBu96j
         nnKiJ7HAdFxbORf81W0afEOMsKDirXR+9WS0yiuJ/G2A3AOvwKLboNbZu7vqjDqVdbmo
         DlEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b="BA/UrMfy";
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 212.227.17.24 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SROvpFGV4WxKkZbL4Ex9FNFw6LYIcz5d0x0sZAwvSmQ=;
        b=ryyq6pu+QWcVHWNVsjJp+8zzRQLLzar7DbyUZjSDDNcrU3cmI0bJP1BTzSFA8IsFAN
         1gLUgebty4LWC5t7PZhurvraZMhK9h9ubpfFmJSp3gy7/6urGuz0g6cBIKm78wTLfyGA
         B8HGNzUtWuPimC1UAGaiDW9B7bStw220yikyke0njpml+WeeWyk3wEobVOc5pMRzmVb+
         3jBwqZjVOigfccSHtuCiXYuW81iS3g6WWfCzL67YME08zBPmRjWfWa92DZ95aHIbslqw
         TClRW291BrW8Sw+4ably5AaPhaE/t3MUkaElSen1CnV0Sbg6Vo3MKviS/Ch7yq03hVTf
         ov1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SROvpFGV4WxKkZbL4Ex9FNFw6LYIcz5d0x0sZAwvSmQ=;
        b=rCpahvFyakNof5L5QSBjqfL4uRgrJea46KG3h+6z/UtgWXsH9bm4F+t6Bo4q3P5TeI
         l7kwLUf3nkaVgPJxZjWu2KkCE3TCxLc4GkLAJk1pBv0ftLQMl+lTW4YHx+xGL/GKo4FZ
         iakweMb5+7YLlDP9O7RK5SooLMRbNS/w8dO8NnDo6gSk6EyucadEOzajnr8uySt5MYgq
         mEFG5EMt7G2vTM93G9sV83v7EP3ISbZdSlo/dKLzngYfh5uutaPqwKLf9PcrFGOIyDHw
         p1YpqgES0KyophYyy6DBm5RuSeoOxFbJfbRyFZutN8t5c2BruZDyBkHJHW6k4/l700wF
         eHrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aTMwbcR4liirek5YWFUl95kdTnoXoVOYpGbDpLaXHo/e8UQR5
	H7XZiyKogLMZEGxusdJC0Ps=
X-Google-Smtp-Source: ABdhPJzCUAPCoSm7MBkX/ohRmnAzvtJYkr1p3nRfmqGQdCCeUHqOHB3/bHnB+CkxRpMHe2linU2xlA==
X-Received: by 2002:a5d:6792:0:b0:20a:d352:10de with SMTP id v18-20020a5d6792000000b0020ad35210demr22709111wru.326.1651780447172;
        Thu, 05 May 2022 12:54:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1688:b0:20c:67b9:e68b with SMTP id
 y8-20020a056000168800b0020c67b9e68bls3041738wrd.3.gmail; Thu, 05 May 2022
 12:54:06 -0700 (PDT)
X-Received: by 2002:a05:6000:1d89:b0:205:e6d5:c571 with SMTP id bk9-20020a0560001d8900b00205e6d5c571mr21775786wrb.594.1651780446182;
        Thu, 05 May 2022 12:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651780446; cv=none;
        d=google.com; s=arc-20160816;
        b=kRUxGirAKIDv2zL5i03w0xdgiNJctW1RkcMo3MT56aSCkMrQxZKtwyts8vz4InJwwp
         DiMLxM+7Ac4QFggRjVzSU7r/+ghOyHFHcNKrM3kv6nDY0rSO0xJV8BF4OS6EAOVQ3gpv
         8Wz0XK0/97TL7FoTIEx2DQ7svz+jW5TwiZ5N+oHsHuOoz5jo4K5fScQYqsgbVQaq4ExS
         pN0Qhqph8BvL5RqZ7l76qo8VqZPtRjf07tYwQY+GHEtOQmPiG5EPUaIZ4jEGss6ePNy6
         jIGh+2VQlwHv3p/JpXYO30so2J6lumm8ktL8Q53d3NeqIlqzfbDxd41Hxu0yHXP44A3J
         VSFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tvBcgLI6Eqt0EZ7idUaq40qz9dXBVmb0utBT1g1lqeI=;
        b=LToKLWtJGpC43p2pRg6Wy2Ypg+ARhyqtWtBKfpp6uE/qhUHsaFXFB/kdfQ0vHhJSl4
         HAtTARHpLWQDt2Z4fRQOiRdfC7fKdEIQdBaEjatMTa+ghY+IyL0M1Owoc2xCjvqIeMKZ
         V9RpMwzrvnmqVOKtBJErmeDz8T6XNKN/KNjOefK6OEGFZWK9LY6GSirRLFm/cgsBtUj1
         SHlFmAZGv3AcvpsbBcBRspLir/LG8hvu9HER+Ak9aMOk2U9MQ4oiUl1IQSKjRDQ64LoM
         s+78ivHUgvpYef9ZSUGKDqe7WDOmL01Waz7p3B7tQ1ZuetE21a912Ez+EeRsRgSo0sPo
         RwdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b="BA/UrMfy";
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 212.227.17.24 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id v3-20020adfebc3000000b0020aa8063034si113270wrn.5.2022.05.05.12.54.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 12:54:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nicolas@fjasle.eu designates 212.227.17.24 as permitted sender) client-ip=212.227.17.24;
Received: from leknes.fjasle.eu ([46.142.98.182]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N3K9E-1nwDkz0qKw-010OY9; Thu, 05 May 2022 21:53:59 +0200
Received: by leknes.fjasle.eu (Postfix, from userid 1000)
	id 156A33C088; Thu,  5 May 2022 21:53:57 +0200 (CEST)
Date: Thu, 5 May 2022 21:53:56 +0200
From: Nicolas Schier <nicolas@fjasle.eu>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	linux-um@lists.infradead.org,
	linux-s390 <linux-s390@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 02/15] modpost: change the license of EXPORT_SYMBOL to
 bool type
Message-ID: <YnQrVI1r+Unp2vn+@fjasle.eu>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
 <20220505072244.1155033-3-masahiroy@kernel.org>
 <CAK7LNAREQt5rPGK8zsti_UA-dGFKfqHsVWbSgMLw-yLoeNkJeA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAREQt5rPGK8zsti_UA-dGFKfqHsVWbSgMLw-yLoeNkJeA@mail.gmail.com>
X-Provags-ID: V03:K1:eVIKbsZAbmzWlKtPrBj9Mb+vBbXXzsRynicJaMbmbzeysZP9arT
 xtUnuIVyv55qPraP+CQORaltSCsWVTcv/yBmJe397a5RhE4lqPF/7NTAdPbhqJt+3Gh8g92
 ZoO+xpkipSHT4m8eoWenn52JjlnfRIYuJaTzy/dfT9T33OOig4RA8icWKQqDbDJT1r+AETo
 wW4IQZEr5rVf+AzQyOwXw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O1718LcMWqY=:suNSu7o6nKuRoYHjwHkK7V
 I5JxHIqIanjGfPigUPLhylAYRpIOBsQUko5BnQ6W4am6/4Rk1hQN6SjvKN5TJ+Ie4NSKLKRUU
 /rCUpt8uxsEkDWvgPp2uG0z6DNKPTzqh8GOV+zc/pZy4BIyyREB8aD/ArpRnIaRaYTcqnn56q
 XUSx9OWW0FgRVVjXnPgkQwU3vCboB03AivsI9pjAaunR2mMKkgjkV9UgoLuBEtCr1gGEQLY5q
 z4gY0BE70xMtqT8byLS8fXfYh0Cd9tmtCdH1UvMI0eN9ObwTzYhaRtzGMaFmzNcYu/HJGpADG
 S8KLRMdZq3HDg9PtUi/8323eqrhjuEFIx9AcoFTVjHgQkAUqar0NTGwnCGXtlJ6By8bb1mW1N
 dlSRIjRe39kgHYAcF4eWrvXUorPWsok/1vGuGljWIdqmDlUxyf6IaxJH9iEdRJZi4QMOYsrru
 GwTY6TZBAAM7xXkzedF/IBOT6zwIoooV1swVFW6ldMo75vnpOkJ7OtLQBARHpTDtcdpjFN9oA
 tonNUBC+ZHeQ8bmR1CcgL4nvBkdAa5mIRaypRTPGCOtPxEvwMhuyASvdQkdxOCbWJbK9uZa9l
 h7U5WP0/B6y9l/upnfY5B/pSb4v9X4o2Cxgjvspp3ACwnhKVDVDlZ1Sgugg3sGpeXE/AU4xsl
 9YYc4OOhpf0rxjgHtRHcZ4fJ+MpGjD+n2/wd9yTekkkDcgbJ19y5X+rdO48X0t3Q0g0c=
X-Original-Sender: nicolas@fjasle.eu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fjasle.eu header.s=mail header.b="BA/UrMfy";       spf=pass
 (google.com: domain of nicolas@fjasle.eu designates 212.227.17.24 as
 permitted sender) smtp.mailfrom=nicolas@fjasle.eu;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=fjasle.eu
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

On Thu, May 05, 2022 at 10:48:55PM +0900 Masahiro Yamada wrote:
> On Thu, May 5, 2022 at 4:24 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Currently, enum export is tristate, but export_unknown does not make
> > sense in any way.
> >
> > If the symbol name starts with "__ksymtab_", but the section name
> > does not start with "___ksymtab+" or "___ksymtab_gpl+", it is not
> > an exported symbol. The variable name just happens to start with
> > "__ksymtab_". Do not call sym_add_exported() in this case.
> >
> > __ksymtab_* is internally by EXPORT_SYMBOL(_GPL) but somebody may
> 
> I mean
> "... is internally used by ..."

Looks good to me; a nice cleanup.

Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YnQrVI1r%2BUnp2vn%2B%40fjasle.eu.
