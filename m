Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAFP3SEAMGQEG44SFQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 298893EBF35
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 03:08:18 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id f64-20020a2538430000b0290593bfc4b046sf10788723yba.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 18:08:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628903297; cv=pass;
        d=google.com; s=arc-20160816;
        b=HOVWd4FF1bZGp1RwTWQ2eh0/k4ApT8DrFTgRce1+90VMlILDgG9HBp9XiCzBlaqAaM
         cyRdgWNfUqmkbVYlo4LHLRoRwCVCFAyrLQZj5Mr+QIWRN0xigOFn/469hN8K+3XRfM9+
         r8OLFNUfXbWook+ka0zQGF2shLcHeQBGWsloW47BiTjI/cIP6nPDvF5zKlUVGDLRUjKp
         GeBxtYXb9iT+EUe/vkrqG0PUUj5BcIM8qrS/cjOxUjABaojn4DEl+xBg1wQ33SZdApnR
         jxxrqn87c4hSYy19NswHCj6tW2xR2W1i8f592MYPgugpSqWYgPSjGNZVyTfeTQ77cq8U
         wm9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=OE4kd9iFwRZcBjHm7g9XL4jOjxr18oLDq2mzJjgVx0g=;
        b=fD0k9SkHpJ9XeTLaM8BSM818u264rqhftyCbL0go5PlPUgPPj1QoP4cZ6GdEietx9T
         Ba1BNAuC80eK9gSD6tXQnMDMIi+cRdUfy1JRNJBuOGhau/EXqTa/uunclzex9+Hum1Yv
         lJLdkPdsmq2Ucu51YK9W6B6f55b+8F9doIuf5pKqVbOZf/OcAcRdwJrekxDppxRPiwQ/
         gJYMoZtFdXajH+mTI9zBnwkKXP5nCM3DSphPUJomenG588VRP2Zy6BCtHrWMd4bIyfXA
         3qgxsSA9TYkkvGwEYHXd//Eu285GXz94m6ZUZuDA65sAqgFG+xlOhF7uqoWLBxo5+KJH
         rdow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=VJ9LOAt5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OE4kd9iFwRZcBjHm7g9XL4jOjxr18oLDq2mzJjgVx0g=;
        b=N1NAXAM9R4YU73yPie3jZ4HEhX3VQ+ZKvxV+nlK8uOUfZ+Zy5MhP3aedDru1LcZUKb
         WnW0J1p1bcD+Mp7Df4I9rveXUPq1m28yX5uXVai3FtdvcgaJemqHFnmZhMtT3Sc90DPU
         rDSoqCMxmT9PTrdVQ7NZjuOuLRunxTj7VGEVJC4rd3xRwu0c4gM62O3Y3cq0lTXHBNDZ
         VNLo2bzCk5RapX7qaZK1naKs+flCgGtHlB/wyva76+SBFCM1HI69dzAhSbeSgVoYEjS8
         G81oBJ0eWRyb0Pif2SROZmP6Pu/vHMnNaz4JLnLPRgtjYK/4TzW25ugQrsrg0tUXoaBW
         3+Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OE4kd9iFwRZcBjHm7g9XL4jOjxr18oLDq2mzJjgVx0g=;
        b=j/vHw0JlkhPL7f0u0l3P4VZyHWJvM6kiao9su9vOBcrNL/otBKKgyLpq6dLNR3uZQ9
         Hd3yql/RnFblX99uxjchl2/AGN7FOpg5CMjQwnXWiL5TmYPZjmTjI+t617gg+smh4QJy
         bAe9XOqpa/q9zjfk6hyejNz+Urx6AQIY/qDTqMoIIbA6eHhp1I3VtGD50PPW4rQL+MTf
         bzRjulCUnE4Vk1aVlZXbFeZF8Kq43n0TPNzUL9uz9DPAV6CoT8m0fh2T8EY9tQteXFl5
         0GUhluovyPQnq92MgyxBXWZjjSTtV2EOH81RDJfmNmPiVh07oM0HcffB6ToaOUo6X3Wb
         ARcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321eKBYLdPQKpZucr+94eaVB3Re3uieckwg5yELJCXqFviG/xjY
	VNlQLPWwH9as+YlqWweMuL0=
X-Google-Smtp-Source: ABdhPJxqT+0o/opkpvUGjDLhQmLAVq9/030mtsOVnSNyniJQNXOc3Am2kInqdHXAfFTYuWpi62zrnA==
X-Received: by 2002:a05:6902:50d:: with SMTP id x13mr6810983ybs.278.1628903296839;
        Fri, 13 Aug 2021 18:08:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls828035ybc.7.gmail; Fri, 13 Aug
 2021 18:08:16 -0700 (PDT)
X-Received: by 2002:a25:bd89:: with SMTP id f9mr6447418ybh.222.1628903296315;
        Fri, 13 Aug 2021 18:08:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628903296; cv=none;
        d=google.com; s=arc-20160816;
        b=QZHlDW53hSTQcfZ6X8PoCRj+lPv1n09Kn4zluFzD1Ti5RrlsdkKM8S/JiqrxetpjU5
         bw27iSwnVfjoN1dvwXv88pkXod4yEm0wWHUb1K4WoGUz7dA22KqTyXP2zM6/LEoU6aed
         ae0wFRf0E/8g8fkI0UoF65MT7O0DYUV0iny2Uq2DIYeSQY7wvbTYEnT1n8/1pBODQ0hF
         kn/qcuJNnhANwrV66TFJ+6ILkEf1StjnLs6UnLZF+A4tCcqxiURjHs1+wC7qz0pPgbUm
         cx+dla5Qjn5jNY0pcDBTCivfJThFgRj757UI+/BlsiAiIyo7DiyNzB2I3xLhoSsNqD93
         o7tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=IIOxmNpjJY0+mi9Qvj3dpkC38f3a/+t9vF+6h5pqjY4=;
        b=ApAg5iTSG2chcVAabcLWDEd4NWtAaPTUT11NS5LNuaeZ3e2CbyMZ6bj7X5R2OYStQ3
         xehyve40PeAFJ6EX10+Wwav7vTecHN9kqbyTQrFPhKdJfYWqZFOj1RRjZb7Ihs73kiOc
         7IZDt00ALzZKm4mDKtFKlC+OiEVZFHaE2pKXtbjj9SNd9uZhc4R5VStqkQJ53IxTCeul
         Y9oiocbme2TbZ2+vGOHPoz0kFJshHnGlHkDTANPnlVH7u5Nwfw/6UCA57PpnDcwiJAAs
         p/5YP1pJrdjOQpqhstX0YTkwp0gLwoXiU4FpoGQsmgUSqqb+TB8MDpuspGHmS6UDNDwl
         kRxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=VJ9LOAt5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id z205si169922ybb.0.2021.08.13.18.08.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 18:08:16 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 17E182pL007975
	for <clang-built-linux@googlegroups.com>; Sat, 14 Aug 2021 10:08:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 17E182pL007975
X-Nifty-SrcIP: [209.85.214.179]
Received: by mail-pl1-f179.google.com with SMTP id d1so14231944pll.1
        for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 18:08:02 -0700 (PDT)
X-Received: by 2002:a65:6459:: with SMTP id s25mr4768167pgv.7.1628903281994;
 Fri, 13 Aug 2021 18:08:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210810205611.4013424-1-ndesaulniers@google.com>
In-Reply-To: <20210810205611.4013424-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 14 Aug 2021 10:07:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT0KR_xjPNzdB1aJ9nj3=A-ktU-aoP0CWvAnMJ91djfyA@mail.gmail.com>
Message-ID: <CAK7LNAT0KR_xjPNzdB1aJ9nj3=A-ktU-aoP0CWvAnMJ91djfyA@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: add Nick to Kbuild reviewers
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=VJ9LOAt5;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Aug 11, 2021 at 5:56 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Kees' post inspired me to get more involved. I still have a long way to
> go in terms of mastery of GNU make, but at the least I can help with
> more code review. It's also helpful for me to pick up on what's missing
> from the LLVM ecosystem.


Reviews and tests are always appreciated.
Of course, not only from those who are listed in
the MAINTAINERS file, but everybody can provide
reviews to any patches in their interests.

Applied to linux-kbuild. Thanks.


BTW, one struggle about being a maintainter
of this entry is I need to take a look
into random stuff.

KERNEL BUILD + files below scripts/ (unless maintained elsewhere)
               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


Another BTW, this patch reminds me of Michal.
He is inactive for a long time.
I should ask him if he wants to continue
to be a kbuild maintainer.





> Link: https://security.googleblog.com/2021/08/linux-kernel-security-done-right.html
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index efac6221afe1..9768e4a19662 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10091,6 +10091,7 @@ F:      fs/autofs/
>  KERNEL BUILD + files below scripts/ (unless maintained elsewhere)
>  M:     Masahiro Yamada <masahiroy@kernel.org>
>  M:     Michal Marek <michal.lkml@markovi.net>
> +R:     Nick Desaulniers <ndesaulniers@google.com>
>  L:     linux-kbuild@vger.kernel.org
>  S:     Maintained
>  T:     git git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
> --
> 2.32.0.605.g8dce9f2422-goog
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT0KR_xjPNzdB1aJ9nj3%3DA-ktU-aoP0CWvAnMJ91djfyA%40mail.gmail.com.
