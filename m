Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBQMVS6EQMGQEJA3J5HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id A26973F6E8B
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 06:44:50 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id q11-20020a170902c9cb00b0013346a0d4e6sf3312447pld.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 21:44:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629866689; cv=pass;
        d=google.com; s=arc-20160816;
        b=M5l7Oo165SYRV18wgCkiJ4d7N1GuI5WviVjOCCt9T2ZGOv5q56CNZbD1ciREEPMbsb
         Z2LvpI6YOGTJZrJrW5pV8PXb4aXWSIZdp+3XOUk4hBZldKbE/OyK98BDD2uiOcY3T1BZ
         AJvyLVjqrD6mT27NWBW5+Q1+J31dUVHhCRhkB3TtjXWqTOGS2rt/xcI5CcITxSIQy/3Y
         77X25Jebs0qQE21GyEFHz6cEeIVxM5P1XPsKn1kMDkoUsgOqC89yCWS7Zxhol3SIRA3e
         m1K2zItCfWpd4/bXhwjD27E+QCvyj8h8jWo284jWA99xyTB7pJGAH/G3l13LZkHbpiTr
         RfJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Xac02K2YBHyQkOgIxxppJbhFIMhdwKioPnNFchKx8h0=;
        b=jX2aW1TgiUOYd8PyQVSprGK4uk1QAZ97NO2xb7jbsDaf/nnOBcOkJVCBJz8Tv/uml4
         dMHXqw2LTpKsESeUH5W17cmKZBpQC19pKpnr4Va7aNrx4/lMbZYAbjecYnm/cxpQsk+P
         QJe3iPbKakxkJAEKaatjE9QrQF30IofvofgpRb6TVdgdH7ijF4zWOqR2H3Z/z7gnxhMr
         GdOJqrcWGZsiI/8xdWVKiYi42XZLtXbyxcI7qXKu2PX++Ff2cKpCbXnzyWDVMpF7WCwY
         L1AKanHC+2ZwF9IXb5WTrfep4ekI+enefK4PcP8TSUDnmmI8U2Nls5niAgfuGcS2bHc3
         fZvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bUsfxEAV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xac02K2YBHyQkOgIxxppJbhFIMhdwKioPnNFchKx8h0=;
        b=JghBrE7kkZ8H/CKXe7hSCQsGJCyshKWZ3vfBd0nyaZy+y2BnPKw5AykrgeCeePsV54
         0vOWUD7BpBhwYyrplU9vBFHSt7WlQ0VM1lJbBsnzKxOE9HGlx0zx7YVM1NWzz8YRKpLt
         G7QiRK3A+b8xCS0vsYnWPKeNUyJ87mrU4I9YZxbvI5qcViEGpEntEPFKrwUIP5lepanr
         1LpKGSjLfbMCBQ8gNvzdMBYG4wun1/EXfN5gVQJ6NsYpW2t88mnvPbE3YvP6SH8JP2a/
         lsdP+INEV5thIyWeLRQvA0u2VkzBRul5xZmkaFA9jbbHxebJ4bN1u5BFk/1xtjciBS76
         APJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xac02K2YBHyQkOgIxxppJbhFIMhdwKioPnNFchKx8h0=;
        b=mpdNYxcm7JjZR+wgwUGZ9fbfuI2xK7DriSKFAHfbyBEafjmz7b3Iyxrmg6jVwTKR0+
         L57fNleJgvP50stwdhvn85yNZj50hKT6Bizx1vpkhcniTE947qO4XZ0X4wEjn7IkOqUo
         GSoqqytvecUrKZpRvglchaypV+d63ADv1RwU3du54gMJamfwpA3NR9PlXvFq8g6iwnlO
         FcLoI940uc1UzIgAdbUyF2FWeXc4WJ1NlGpBpJg7BrB6csCWzYmYGnQHELa+6+FUzUjz
         bugD8OQblGhKWVaSk+qL99PHrEaoTOa80DyMWAiK+S4ijzkBQQpL6p2aVvdSSmWNWRfL
         Oohg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TdzE+NlDH1EeULTo0fIh2+Mac/usCSrEzCV3Cbcev9sxIRMmm
	8wCePGU9SxZe38omQ6Pxrbc=
X-Google-Smtp-Source: ABdhPJxavsmmcIURs+56PnEm4jMB6aLkRUSqjiXnMfafZgogGJI8Wa17zAXY39uRuxrXd/396H0fKA==
X-Received: by 2002:a17:902:e20a:b0:134:221f:657d with SMTP id u10-20020a170902e20a00b00134221f657dmr13165531plb.78.1629866689244;
        Tue, 24 Aug 2021 21:44:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:91d6:: with SMTP id z22ls403612pfa.5.gmail; Tue, 24 Aug
 2021 21:44:48 -0700 (PDT)
X-Received: by 2002:a05:6a00:14c6:b0:3ef:7310:64e6 with SMTP id w6-20020a056a0014c600b003ef731064e6mr1745107pfu.38.1629866688614;
        Tue, 24 Aug 2021 21:44:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629866688; cv=none;
        d=google.com; s=arc-20160816;
        b=Q8NmPPJhHl9nk3pGSjhxjfJ0TK0V4nPNIg8bs4lQ1IhnmtWILgguT4gS6+jrwYF+6C
         m4SW5m+7rWPcRrBuFv5VNxTAO0Z/AvHMXvvglrDilkmdk7ppU3vBn9cXVFFjzkZFzaMd
         MmW1vtiT3tEu8Z/9Xj8ZizhJgXBUvOpQW9RSklCAgYKoZ9i6g8OGi4sYK4onxBF9MnLH
         RD//+qmpPUQQlQGx30qPDjmhiKGkzxJDA6lu3WUA64X1hc03atR4RVXnSzTAan5zNrAM
         21p6UllJTbctFpbCscth5b69+eYBIb0gTqSuvjoozWGLyvatTomaqNjqtSinYmtI5Bta
         TBQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=DqIvSHtgFoXALuHZn57Z3KEbfy5yQoRH9FoiaBdwibI=;
        b=Ld2vCmBch7gZtsUaLCP8yhQg51sRzVJcwwTNx8l6UPEKZIcZuCcbUq98C3yVkc432r
         0ojpgDQ9Zq2Gd1kuzAMqbvKydXpPGhw9gWqop9RFc6Bs58NjCD1Zzs+1kUN+ne32lejR
         DK5yOGZ04bSPyxtjTmiCLrCfdBjnXGuQOot1J/1mB0Wn1Mmj6PJeiTCyrIYZgvZvFyvm
         ozs0mDYoyU52RxIg5/ysdIYlQmsEZPadL7pD5f+tHNmzF5z6KTxGdw2SrgXjHsSa0chE
         PvJcpFztbHYIl7joTK/UXpTIKZM/LII8pMav0tUGzsHfieDcejSQvcgyGOC0MWDKTehw
         pewA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bUsfxEAV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id x124si61648pfc.5.2021.08.24.21.44.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 21:44:48 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 17P4iMh9018606
	for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 13:44:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 17P4iMh9018606
X-Nifty-SrcIP: [209.85.214.170]
Received: by mail-pl1-f170.google.com with SMTP id m17so6536382plc.6
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 21:44:22 -0700 (PDT)
X-Received: by 2002:a17:90a:9314:: with SMTP id p20mr8470039pjo.87.1629866662071;
 Tue, 24 Aug 2021 21:44:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com> <20210817002109.2736222-7-ndesaulniers@google.com>
In-Reply-To: <20210817002109.2736222-7-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Aug 2021 13:43:45 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS7E9uMJfCGsFPkP_z9y0Y_PrXXzMTRRiwsbj66bTi8SQ@mail.gmail.com>
Message-ID: <CAK7LNAS7E9uMJfCGsFPkP_z9y0Y_PrXXzMTRRiwsbj66bTi8SQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] Makefile: replace cc-option-yn uses with cc-option
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=bUsfxEAV;       spf=softfail
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

On Tue, Aug 17, 2021 at 9:21 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> cc-option-yn can be replaced with cc-option. ie.
> Checking for support:
> ifeq ($(call cc-option-yn,$(FLAG)),y)
> becomes:
> ifneq ($(call cc-option,$(FLAG)),)
>
> Checking for lack of support:
> ifeq ($(call cc-option-yn,$(FLAG)),n)
> becomes:
> ifeq ($(call cc-option,$(FLAG)),)
>
> This allows us to pursue removing cc-option-yn.
>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 72f9e2b0202c..f76be5f62d79 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -967,7 +967,7 @@ ifdef CONFIG_FUNCTION_TRACER
>  ifdef CONFIG_FTRACE_MCOUNT_USE_CC
>    CC_FLAGS_FTRACE      += -mrecord-mcount
>    ifdef CONFIG_HAVE_NOP_MCOUNT
> -    ifeq ($(call cc-option-yn, -mnop-mcount),y)
> +    ifneq ($(call cc-option, -mnop-mcount),)
>        CC_FLAGS_FTRACE  += -mnop-mcount
>        CC_FLAGS_USING   += -DCC_USING_NOP_MCOUNT
>      endif
> --
> 2.33.0.rc1.237.g0d66db33f3-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817002109.2736222-7-ndesaulniers%40google.com.



I am fine with this change, but
is there any reason why you did not touch the following hunk?



ifdef CONFIG_HAVE_FENTRY
  # s390-linux-gnu-gcc did not support -mfentry until gcc-9.
  ifeq ($(call cc-option-yn, -mfentry),y)
    CC_FLAGS_FTRACE     += -mfentry
    CC_FLAGS_USING      += -DCC_USING_FENTRY
  endif
endif









-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS7E9uMJfCGsFPkP_z9y0Y_PrXXzMTRRiwsbj66bTi8SQ%40mail.gmail.com.
