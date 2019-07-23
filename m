Return-Path: <clang-built-linux+bncBDTI55WH24IRBBGS3TUQKGQEMIS5AMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 2097871BB5
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 17:34:30 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id 145sf26428800pfv.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 08:34:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563896068; cv=pass;
        d=google.com; s=arc-20160816;
        b=HV108KyBt0Qm1FeiNXD6dpIWrSRjpeg3bPh2kgLSgQw/ZX2bAeFJq0ZNlUIxccW6z+
         rXDQaocfA0VclpVnrk9qmxi81EzF0SLx+9/x44VuY9jFGT66c7MlRQeZM3CAc24wwCM5
         LJ3HCIqUb+SIaEBrxVauHK05Mz7dhJXCCYjNqa/o/xyXyF34ZurRWEYlJNgHBv73eu5K
         rdjr0ouLcPagR3MM8mwmHVyDK7jnlHsqwgjpfY4QysTuhCEjQZDoI9Krv+/uzmoLcVhZ
         3PFDmpPhRBop6TwIOV6zmGaWzuSnZgVcz07G1pN9pLGrK+/W6qIsLNd+HELlnVqA6Oe8
         idAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=KM/q9wI18UdXz00bhXeStzKBiYrw9Cshb8BC1ZQMjbo=;
        b=hEw3DOXNeR6B9b3VG6AYTo+VOFMWYyAZH+oVN+yikkdO8lCzNJHSXXQ3OlMURhrZKc
         eMkDcZl30lOUaRv+99aVYaSlfqfC2olH0THuj051IPtXT2NS10T0cJ/CftTCtEMVZaIn
         z7YwgEkhqGphATEgUdMMd90HS3PatE2gYWLrOUQpuYYr6z3iR6RrqQvNHkdgv/abYrxE
         bKDpmCPc0tN91wScFPGboklaLBaiq8BWDt+pRJKXqSDs9N5Y0Js/jniWL51gYzLi+Jli
         eqY1h4TuLdbCF7V436ppBTWMvekstrppCLeyJ7JEZU5x9dsiZyQamj1FOEYXApoBoh7t
         oO4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1WYDi0ZU;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KM/q9wI18UdXz00bhXeStzKBiYrw9Cshb8BC1ZQMjbo=;
        b=Hb9Zk2VzP6fzxOas3pOfFyHo2HnKXBYyc8ozvEwX9f5LCyynMrExG3gBkq7bXNVrN0
         ZEup9x/oliMTYYxO6BZJl5Cjz3kvEPMwDULBCcmvbeT58jr/7Mntlc800JJLV8wv2FAe
         toNhq754iHDh8YVKdCPNVIyMuXF5PT1kKLSKVEIU0jOFmNHi0CnqYGPrM/h+bxv2dwaT
         STcyO0HIzwd3cyo1SgVIO7n1ooP+WMtG1eBrEMettPSh6HTG1bngLbp7PqAlHuk9I0Po
         DcxPfNN6F0zMGqM6flnNIHa+TSdThVLXJ/gJABQZrc4LLX54MvhchZNYwK/UsthQZDnd
         v78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KM/q9wI18UdXz00bhXeStzKBiYrw9Cshb8BC1ZQMjbo=;
        b=Ujgbo+gGeSTbqjHSvVDjM3Kj6XvVtQqu1j3sJs1/Bn88esTOVhXwpSxjgdPoX/l7/J
         YA8wSwT1KPbkDj1Bc/+hrBGvsTJCOwSyWjcfn207TpLjgBUKo9ofk1cFx/Wtz7Ut0WE9
         gTYwUfaX5dQit1dNA34epqHMPP4tPBlWCodZiS8g9TmCIcCNM+RMxlfDSNpISxfJJpUU
         6t81InN6PyKFDearDRBzj+HaJn1rrcRYu1QnS8e7baiXdw48HNEmKMJ4ISMrM58LRbAq
         X3xWWm39pqPQ3oJalARx2cl2L9RksHNrf3OsBpObulve8kS6vIWV1gBHmQJicllloA02
         kI1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVtnaOt02zEwt30FRKF9SIqniIe2QI08wO6QQz1RHepcL/cnD/F
	iYAhdoLBbCtlQOrH92Mfhso=
X-Google-Smtp-Source: APXvYqwbuEZRyQgIHIYDjduPivusnMWymvATBAdSakC9g87/GTXAFBsqXH0o0Ks4OSmb5yGCbIKQxA==
X-Received: by 2002:a17:90a:9b08:: with SMTP id f8mr83451943pjp.103.1563896068746;
        Tue, 23 Jul 2019 08:34:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9684:: with SMTP id n4ls11603159plp.2.gmail; Tue, 23
 Jul 2019 08:34:28 -0700 (PDT)
X-Received: by 2002:a17:902:e6:: with SMTP id a93mr80970323pla.175.1563896068308;
        Tue, 23 Jul 2019 08:34:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563896068; cv=none;
        d=google.com; s=arc-20160816;
        b=TAMhr/1AQcRdiB/WAHjtFmzLzFHq/asQgBgxpBTlqqYfW+Xd82YUGdLsZJ5Gj4iHyH
         /1XZ6P3vrNa5OnYYAT9b8RRbPeq6Eah2cXrH1sCR+yx9izgJJinpDZcpGTeYg5Yjum0U
         Ohk1inizfkk/bJCn75VBEpFiMp8Tk+CkbTmen8MZtmgPFMLA1XhCjCPjOuzUgfBLXtSP
         fr41c3avk1qbvEoAErEI6nHnESm5ArRweKtFeyX8Wx5nmSbfouaC0IsmKE/pQL9RW7WM
         kFQb2uooUPvBygxwMYJEvYqlzWqqCSgNYehNhkNUOzf8T0oNlpsllj9S9K5ES09sHmu7
         A3cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=N8wYBRYX7KskQnF/bGZfXUpOo7enlO8gdq9+R2SRBS8=;
        b=0yt9AwOMIJtwKZFo330ZT0rkK/n5l+r61ZmEGYKsd3Ew0qDOfQcneXrIXQ74YzXKTj
         /nhvZpomGPhNv9vqXjkZaZY8dHowPXS8RHgzTts8AvCKWnbV2GPBpHF3qC+PzHp2SRL2
         jFxVTHAvgjW/PLtSCkWpJ25Ss602BLLusxCb1yyXnTF6bQqO7dVW3NHJKzGZj9ubR/+C
         Vcte+3GDhPER3Dp+KmRiAoCc+u2MeArDX3tHKbbDvovHSClWsLjxxt+kJKueNyFpKYPw
         HYc6ni5TbJX7unzcndT4sosfyLcx1h4mWt65RKYiHUcGuADxggoKCveYrqC9upi8JUq/
         YAfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1WYDi0ZU;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id q207si1245963pfq.5.2019.07.23.08.34.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 08:34:28 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id x6NFYA7B012774
	for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 00:34:11 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x6NFYA7B012774
X-Nifty-SrcIP: [209.85.222.49]
Received: by mail-ua1-f49.google.com with SMTP id o2so17074649uae.10
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 08:34:10 -0700 (PDT)
X-Received: by 2002:ab0:5ea6:: with SMTP id y38mr48030587uag.40.1563896049791;
 Tue, 23 Jul 2019 08:34:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190721085409.24499-1-k0ma@utam0k.jp>
In-Reply-To: <20190721085409.24499-1-k0ma@utam0k.jp>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 24 Jul 2019 00:33:33 +0900
X-Gmail-Original-Message-ID: <CAK7LNARBjkYHkmv1michYYMd-2_70d+-Gvg1Kv4FyPeeBShvdw@mail.gmail.com>
Message-ID: <CAK7LNARBjkYHkmv1michYYMd-2_70d+-Gvg1Kv4FyPeeBShvdw@mail.gmail.com>
Subject: Re: [PATCH] .gitignore: Add compilation database files
To: Toru Komatsu <k0ma@utam0k.jp>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1WYDi0ZU;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

Just a nit.

The patch title is:
.gitignore: Add compilation database "files"

Maybe, should it be singular?


On Sun, Jul 21, 2019 at 5:55 PM Toru Komatsu <k0ma@utam0k.jp> wrote:
>
> This file is used by clangd to use language server protocol.
> It can be generated at each compile using scripts/gen_compile_commands.py.
> Therefore it is different depending on the environment and should be
> ignored.
>
> Signed-off-by: Toru Komatsu <k0ma@utam0k.jp>
> ---
>  .gitignore | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/.gitignore b/.gitignore
> index 8f5422cba6e2..025d887f64f1 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -142,3 +142,6 @@ x509.genkey
>
>  # Kdevelop4
>  *.kdev4
> +
> +# Clang's compilation database files
> +/compile_commands.json
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARBjkYHkmv1michYYMd-2_70d%2B-Gvg1Kv4FyPeeBShvdw%40mail.gmail.com.
