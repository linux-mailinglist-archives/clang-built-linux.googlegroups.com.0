Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBBKEHQGCQMGQEUO5WLUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFA3381B44
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 23:56:57 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id w10-20020a056e021c8ab02901bb7c1adfa1sf37846ill.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 14:56:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621115816; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2aViOZql+BZWOvJJm1K37DKKh3/khHBs94WSrzFDjNzGzl7PnRG4vtbxdWztNWchd
         2QjT6VChuTEjm/4idPRrr8IFE2gptMIqboBWUY/j2EODpmRoEf8EywEIMbGPotufi4eX
         TsbgRTlVggnhcWhvnlL1CkpJ6OR4ETTMuP9mryZVVJOV9TRGos2GvqpV+ufmGZ1lYyED
         /JuymiN75yPuloTYm/hjS3kFHXsi94W/LZsM3Ce77jp0UPYbXMMT/+D88tsTyZVauWWu
         FFUyijyljVwlSIg2xKJP9YTwHbYIFtWnp65xN5jZvzf7jtCY3uKrVfirZRAb9RXYbh1p
         Iq1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=EEyYgfjzoekHQ/xp1qfshV5lLClKXy9UK/7/X8JN+tY=;
        b=a1FnKbM/mSNrWHOodULj841Cd8TrafZ1XZAQT5PIe2gqyxKXDL5Xwxsru1xmmV0IZu
         MlOky2DrT81/8Xm8kzPkZnTAGy0K4FnhTYkpJEmO25Z6eOEHzljMzm6J6vUHn3RNKBbu
         DtywWHeAsKG+F9WrQlQJ/u8CBKMvC4Ru1G7SsSW2I63AwJ5qAtsuAd8nsZ9nBQL8QKfe
         7/GfESFlHjvJYt1fOuGs87b0QxlYX6ZXZdxCUOo2y513dQAiKDlZu+fQUJqeHPHZMYy+
         gd6MEVk7Sa2F5bNnXNKq+rwhsky+AUaUGNgyL/tXT/pb2aVZMMb3jMT87kdPJn7OBzM+
         yrmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z9GvsUXC;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EEyYgfjzoekHQ/xp1qfshV5lLClKXy9UK/7/X8JN+tY=;
        b=aU2ziZD3pAhYtu29cF9RYqqN39Yjvmdh+N6hqZnvAbxZA+r+6lLEco2x3KbgTbW5LO
         mNon3lCLx0f6vFyyaTvWvrr0VNwnmqK4pgkwkcZ8eu71/Zw8fEOhPLrKNXoDxsnvqged
         V0i6yMFwm9VyZvPZACqT3BnluYbNO5aPIR5u3j26HFD0Et6AwY+Az38Z1yxFM7BRj0ts
         fgP7CrWih3o65Qjkja16nMBcCT8DRsUf+lIT+jzw5jlNl1B0OxRPhFc/HiepFdu5OPJf
         5L65OEGQjWkRId99m2S4SrFqIEmcIE7Hiq91B2K/X/ojw/Zu4Ju7J1Mg2MQBiamGe2Qv
         RZkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EEyYgfjzoekHQ/xp1qfshV5lLClKXy9UK/7/X8JN+tY=;
        b=EjYRo6L+aaD5hOuEo3M8n++MofpA39x9oNGndDp3TLVaa9w64YkkSjuNNvZjAc61/V
         pYqnjf/vKLaYj2ViCPiDBC4KauXgLK4Grnb1S9XVDgJCXUeocbbH1k0i9OxEXOTYrGfB
         Iq/DV/40ifiHyzJowRbYGUJudstK+5aC3v6FkQadcSRj9leatD+9dXtuKhqxXhBIa2mJ
         JZmrD+9p51CRhz5y+crjlhJyIKNrgxMAehZ+tN6gyjF24pmUe1YpnD5G/tt4B4SS9qYd
         60E9rF/bTQjwOLfPeu27SGFvZrdx89PQsNmaZdqwfPeK7XvYFuC7wbcZLj4h1GGQ3HlI
         hmRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EEyYgfjzoekHQ/xp1qfshV5lLClKXy9UK/7/X8JN+tY=;
        b=L2DfW4TAhHYN0CAxJp3EIl7E/my55ULP+1NjEF0ewL8r+627ASCMUJ59HoMhWo4bqt
         xPkERnQVS7NvaYnnILpBBtqDVg7ljUQcEPc//MCxI6RpnVGvMsbYaP9xeX0y8Dp+tPJg
         ojqK03Vq83jBAwRYjOKwLVg3x2oYzDBpskn1tmJSmFkKiXkivK2ZHeUi3VVJhaZ2WDo4
         XuVSLjWsEMHuV2oRx31RBeEyWH+DlGX8BAgUCGABVGf/pPO6Q+VgyMwrtaXNdUOoHDYW
         RUldbHbLot2q6vv/kDalH9xACKLf+zwkEDcR0vNNQ0igZKVZpXtZmfZJ5Pw79jdKIEcI
         gjKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DhXWdoBiwcRiAweHralj3RSyG4Ut9XYWwkFPVsD7AEcrRfAo2
	u0N2a+6xDOyH6Ot4qsIdiK8=
X-Google-Smtp-Source: ABdhPJxnsCWUhe9y7TjIuWtOeD8eoeM999rqwC3UuqE69sRWkZoUbEBstvPALyQ/1XWMBiyshDZatw==
X-Received: by 2002:a92:c8d2:: with SMTP id c18mr3510093ilq.54.1621115816144;
        Sat, 15 May 2021 14:56:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d852:: with SMTP id h18ls1299983ilq.7.gmail; Sat, 15 May
 2021 14:56:55 -0700 (PDT)
X-Received: by 2002:a92:d287:: with SMTP id p7mr17186430ilp.30.1621115815780;
        Sat, 15 May 2021 14:56:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621115815; cv=none;
        d=google.com; s=arc-20160816;
        b=sMvv8KrtVq1U0hLGv4xEEhHLWcIa+uaxM+7PUM8uG9Dh0ZSNYZx91rOd9V0JlmCNfl
         +q40ZGVBA2SIjCEZ/ebYenmG3skWAzq2iXvMIg9vFPzMcAN8oxVAJzLNahB+juTj31D7
         PeYARFOOXRKb8+K4b5gJn37fUxwYoJhwLjlKA8GuEmfSYFz+t7ykujx6QP9h88JgNuf4
         mPedeb0bC4/IwjSJFfV3506ikE9CYSkBFiuBP0B7y2C98WOQx7q38koWkT4tOUUJIhlq
         36uYIkkqyuzpUQYhSowhyXbIjSxwHwEO6gaEQcAWZlhPx1yJOHaxuSVmt2y0CITnAFUW
         x1/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aYZAtsF7xEgxqNZKNcxlm0Wj61L74IXoCGhZC5SQH54=;
        b=Gq0snI/7OuZyrOi72J8E7CJYaCIsGUVdJ1x9cP2HBMTmrUVYEObx78Fb9/41JNc/v4
         v/2hCIalgvwZdyUOebOA7DkH4ZrviTANUmhTT5ORF+LOWyCX51RX6FpI7kKlpuKyC2kh
         fpBYogCQlTkYYBT69oDvq+m57X8Ne7yTprn7HYLsic40ccqJ2fPM+k/6/BGd95CpOKdw
         QgKtuztPeAuCwQP3a2pXurAYZUbGro1Z3TRQA6GMWwKtA917dJhnEypghKmD9IjWBqrK
         fSdBqgvLjfuUsVz+/KzurSuEGk9OiZOEhHexTG7YpRsks2OocOftsyj4DSU62b8ZdJjr
         eyOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z9GvsUXC;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id h2si561336ila.4.2021.05.15.14.56.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 May 2021 14:56:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id g6-20020a17090adac6b029015d1a9a6f1aso2950356pjx.1
        for <clang-built-linux@googlegroups.com>; Sat, 15 May 2021 14:56:55 -0700 (PDT)
X-Received: by 2002:a17:90a:1588:: with SMTP id m8mr18534229pja.31.1621115815294;
        Sat, 15 May 2021 14:56:55 -0700 (PDT)
Received: from hyeyoo ([121.135.181.35])
        by smtp.gmail.com with ESMTPSA id l62sm6592567pfl.88.2021.05.15.14.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 14:56:55 -0700 (PDT)
Date: Sun, 16 May 2021 06:56:47 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: akpm@linux-foundation.org, iamjoonsoo.kim@lge.com, rientjes@google.com,
	penberg@kernel.org, cl@linux.com, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, nathan@kernel.org,
	naresh.kamboju@linaro.org, clang-built-linux@googlegroups.com,
	linux-next@vger.kernel.org, ndesaulniers@google.com,
	lkft-triage@lists.linaro.org, sfr@canb.auug.org.au, arnd@arndb.de,
	Marco Elver <elver@google.com>
Subject: Re: [PATCH v3] mm, slub: change run-time assertion in
 kmalloc_index() to compile-time
Message-ID: <20210515215647.GA61684@hyeyoo>
References: <20210511173448.GA54466@hyeyoo>
 <20210515210950.GA52841@hyeyoo>
 <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z9GvsUXC;       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::102f
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, May 15, 2021 at 11:24:25PM +0200, Vlastimil Babka wrote:
>
> That's a misunderstanding. __kmalloc() is not a dummy function, you
> probably found only the header declaration.
>

Sorry, that was totally my misunderstanding.
I was reading dummy function in arch/alpha/boot/bootpz.c:415.
I wrongly configured the tool.

> It appears clang 10.0.1 is mistakenly evaluating __builtin_constant_p()
> as true. Probably something to do with LTO, because MAX_OPTINSN_SIZE
> seems it could be a "link-time constant".

That is what I was missing. Thank you for kindly explaining it.

> Maybe we could extend Marco Elver's followup patch that uses
> BUILD_BUG_ON vs BUG() depending on size_is_constant parameter. It could
> use BUG() also if the compiler is LLVM < 11 or something. What would be
> the proper code for this condition?

Fixing clang's bug in linux kernel doesn't seem to be a solution.
So now I understand why Nathan said we might require LLVM > 11.

I thought I should do something to fix it because I sent the patch.
but I was misunderstanding a lot. Thank you sincerely for letting me know.

Thanks,

Hyeonggon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210515215647.GA61684%40hyeyoo.
