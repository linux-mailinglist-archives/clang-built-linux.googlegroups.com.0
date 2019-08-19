Return-Path: <clang-built-linux+bncBDTI55WH24IRB2NK5PVAKGQEQMMU6FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A93C994B14
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 18:59:22 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id n62sf2833981ybg.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 09:59:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566233961; cv=pass;
        d=google.com; s=arc-20160816;
        b=ILB9Nm9qhdYU7N9KPukRXOtNX/j4opVc/VRy2VAsQHWx2A4vdu3rk37F1uWmbo9pr5
         Tuepi/QJ4QKlvgPkOPF3EDfYMw3SXzX6emoJpoq1VXCrpZviBrXYJdFmnDOS34FYCwCy
         a+SwEs4ZIaS6x6MRHcyDY3HUb+QFMooDqT+lIBf66qonvQC6VzP4dch+u5kXTYi6S9Z3
         1OjgD4Iy3YOK7PaDDSlZYpopZtUypB9Yu4GWUnRxyWHMLY32ZKokxHfxnmhJK2LlBMWc
         osbKmdA52eRP+Dw7DfRSqUYqPcMyEd54fkXDhm8J37i33pFuLvkDsSnx64KPigCxp92N
         J6Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=gfPI2BjsQb6GPn+a4UJpRfwZxV3iLG1JqYTVTSqrCvY=;
        b=LGM1EFGFapHBbF/utHdgoizXGKav+nH/Mv+ZsoY3NrLDX30/FWGeW997qneAQNGEoA
         qqVoHbus6DYYFdLLoweIKbDfz+l321Yq3CHNi9y2Eham2qcuRJVRaIjrxsRwZ57570ae
         v8TSdocAdx01LY3hvlgzjIK1MZbicdFpjJ6m9M/oMgStVA0a+XuYmfxzvNGOr7Ria4DO
         K8sDQ99KcJ8emkIpx8G5NsIT+W5mxWUd5YtX+VFg1itFvaN/WNuc7KzNOH5B9VrpEl+O
         iVqwfu+koXPXBhrewAsGQFgsdl3RksMSAwY6T8IuCwG9awijEK7kDipZwNitmK/HnsHx
         qO0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JWbgfxAl;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gfPI2BjsQb6GPn+a4UJpRfwZxV3iLG1JqYTVTSqrCvY=;
        b=iTXMKuOqvBoLw+ArZdyLISBOpWPZDZnMLMeXLZ5pj8A25UD/L0NATE3yoU3sEyjHEn
         qFOWlcM8QWvRVlolLsZExZHJtXCYyliBt1UzA6SS3DhyyKCD0NStoD82zcg2pMNCkLhO
         o+o9QMT9QGCQIshoz+PDtII17QDuPuEc74Rb3UUajIgZL22zlxbSmOchcerf0mryZsH/
         fdQAe6ggBtnD08GoMIWNwFUJEB8xQJNvg1IQ0Xmn0HUJNn+jGVc5yl/Wr3OsEx4Heqg2
         MpB/ayDqOzAu2CgVwJMXtTISQnHHVMcS9a4pFIHyeC8hRLq+uqH4YjafdLFFxzfzQOvE
         7yOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfPI2BjsQb6GPn+a4UJpRfwZxV3iLG1JqYTVTSqrCvY=;
        b=VRpDHXpOOWc2qFDfCgT2/I80EyL1vCpTQhZWhFiHurNcHP1hTIk0HD9d3G8kIkFsve
         6U6lBJ2NjKV7yCdVyeeX90S+oKl9Nk88VkYqAJbqEkKnuOOCa60InT0hUSyn1OAnMG6d
         7ZzvJCxPila5gCaYoXCgkdSMaAXacu0ksTm6Im8Gvuqjqmi0ZUoscFS5ActbJCCuHjcR
         gqIvRrc2Sdbk21EBkUwdiFrLIJKt3HtnNx4rLQWG0+4byUmk8SywzI/lBWj1gX7ApECd
         fF5j7Ql/sKNWzdcdFF46ZzmEf3ishLjybjjxxku/6ynaEIVrrUWtlrIcWv5zPmFjpmzA
         Uy3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVCGN7Y6TR8nosT4o8KkdTVc4rjy49Bk/JXc9qg3WlGbZmt6Ej0
	udCJQhUYWrLLvkYUe+5FN7g=
X-Google-Smtp-Source: APXvYqwzL6nIUorUWYaejNm1NRJVt5+Nc+UXCzx8d6hU5HLEtAJsscbYzeDhTaczDD7cH7TxsI6shw==
X-Received: by 2002:a25:74cd:: with SMTP id p196mr17112620ybc.192.1566233961564;
        Mon, 19 Aug 2019 09:59:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:52a:: with SMTP id y10ls2587684ybs.0.gmail; Mon, 19
 Aug 2019 09:59:21 -0700 (PDT)
X-Received: by 2002:a25:a483:: with SMTP id g3mr17992143ybi.403.1566233961277;
        Mon, 19 Aug 2019 09:59:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566233961; cv=none;
        d=google.com; s=arc-20160816;
        b=cqEyhA9JcdM3LFER+LxsrlfLYmT67QKZUUr5dZ4z3vTvCdUcrA2/IxD7C5mrf1eeGg
         JjnHE+Rf8RM+CfyyCSh06ouZtONv2XnZIRC7pHK7wGO4L45/IzZShccnx3KWcd5KbZX+
         ZJv5pLu4qxzXPkmfJ/SXj7M9hxb5rMkTsyByRUFo1Hd9+JVfK2vSfwY5lWxhYRvKizJ8
         QkLgYJVk076AJc7u8+JpQXEGKKlInVsw5lv50ZNIFwaSW895fzYf2/Mmrbk/WV320gUU
         5t7NZzAt3iOWI6YdrcE5erF8qMPs03pVTDOhvdbs5N7GxT9Uxdu+vHnQpWfOLczuAgJo
         3xCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=R7hDNBgDCcquJ88PrNFMaEESLDBuyk1JNcuZRj2NKoI=;
        b=tg/81psewTczI9TSnFGhqoFr75/g6SpFLRXHnzF++jT/oezPLTNInNFtDLY9uYGlDj
         m0oXJpaE6JUiVkmTCx32Ier+JdGPMkzlKUE5mScNRg1rToBprvsCdmNejlHgyKECNiyM
         g3FOh0SjHea+eFRzI6Bk8slqym5lQJCnt052w4jaDSBiEnBlnX9nLLGROXjHzV0mVrcv
         ob/ik1/d+6gNhQ6DwxCO28do00fbucpt495VQ4z2//KUBB59GFPjIeiQHPhwzZmb/T5/
         BbQOXhDckbq8fXQ9K6cPVdPvSZlpzqyQRXJQhcCa2A4H4DNYSi7vEmNiHkzLEFTQnxPV
         Lydw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JWbgfxAl;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id j72si170591ybg.0.2019.08.19.09.59.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Aug 2019 09:59:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id x7JGx4Fa008900
	for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 01:59:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x7JGx4Fa008900
X-Nifty-SrcIP: [209.85.217.46]
Received: by mail-vs1-f46.google.com with SMTP id i7so1646862vsp.0
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 09:59:04 -0700 (PDT)
X-Received: by 2002:a05:6102:20c3:: with SMTP id i3mr14856390vsr.155.1566233943217;
 Mon, 19 Aug 2019 09:59:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190819105138.5053-1-yamada.masahiro@socionext.com> <20190819160920.GA108942@archlinux-threadripper>
In-Reply-To: <20190819160920.GA108942@archlinux-threadripper>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 20 Aug 2019 01:58:26 +0900
X-Gmail-Original-Message-ID: <CAK7LNARDQPixBfWp8od1=13w+hcycYbyTX9+G-gqEHHwXxDCvA@mail.gmail.com>
Message-ID: <CAK7LNARDQPixBfWp8od1=13w+hcycYbyTX9+G-gqEHHwXxDCvA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: enable unused-function warnings for W= build with Clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Borislav Petkov <bp@suse.de>, Kees Cook <keescook@chromium.org>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Paul Burton <paul.burton@mips.com>,
        Xiaozhou Liu <liuxiaozhou@bytedance.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=JWbgfxAl;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

Hi Nathan,

On Tue, Aug 20, 2019 at 1:09 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Aug 19, 2019 at 07:51:38PM +0900, Masahiro Yamada wrote:
> > GCC and Clang have different policy for -Wunused-function; GCC does
> > not report unused-function warnings at all for the functions marked
> > as 'static inline'. Clang does report unused-function warnings if they
> > are defined in source files instead of headers.
> >
> > We could use Clang for detecting unused functions, but it has been
> > suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
> > warning for unused static inline functions").
> >
> > So, we never notice left-over code if functions in .c files are
> > marked as inline.
> >
> > Let's remove __maybe_unused from the inline macro. As always, it is
> > not a good idea to sprinkle warnings for the normal build. So, these
> > warnings will be shown for the W= build.
> >
> > If you contribute to code clean-up, please run "make CC=clang W=1"
> > and check -Wunused-function warnings. You will find lots of unused
> > functions.
> >
> > Some of them are false-positives because the call-sites are disabled
> > by #ifdef. I do not like to abuse the inline keyword for suppressing
> > unused-function warnings because it might affect the compiler's
> > optimization. When I need to fix unused-functions warnings, I prefer
> > adding #ifdef or __maybe_unused to function definitions.
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>
> So if I understand everything correctly, this change allows us to start
> finding unused static inline functions with clang at W=1 but disables
> -Wunused-function by default... I am not sure that is a good tradeoff
> as I am pretty sure that W=1 is fairly noisy for clang although I
> haven't checked lately. I'd argue most regular developers do not build
> with W=1 meaning -Wunused-function generally will not be run with clang
> at all, missing stuff like this:


Try "git log --grep=W=1"

Some people are making efforts to fix W=1 warnings.
I believe somebody will start to remove unused static inline functions.



>
> https://lore.kernel.org/lkml/20190523010235.GA105588@archlinux-epyc/
>
> https://lore.kernel.org/lkml/1558574945-19275-1-git-send-email-skomatineni@nvidia.com/
>
> Furthermore, per the documemtation [1], -Wno-unused-function will also
> disable -Wunneeded-internal-declaration, which can help find bugs like
> commit 8289c4b6f2e5 ("platform/x86: mlx-platform: Properly use
> mlxplat_mlxcpld_msn201x_items").
>
> [1]: https://clang.llvm.org/docs/DiagnosticsReference.html#wunused-function


How about this?

KBUILD_CFLAGS += -Wno-unused-function
KBUILD_CFLAGS += -Wunneeded-internal-declaration



> Is there a way to conditionally remove __maybe_unused from the inline
> defintion so that we keep the current behavior but we can still
> selectively find potentially unused functions?

It would be possible by tweaking include/linux/compiler_types.h
but I am not a big fan of uglifying the 'inline' replacement any more.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARDQPixBfWp8od1%3D13w%2BhcycYbyTX9%2BG-gqEHHwXxDCvA%40mail.gmail.com.
