Return-Path: <clang-built-linux+bncBCHPR6XPRULBBCNU4OCQMGQEKOPBE4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B36A39A240
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 15:32:58 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id g17-20020ab072d10000b029024b77c1dbb6sf2573658uap.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 06:32:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622727177; cv=pass;
        d=google.com; s=arc-20160816;
        b=uAvQlWRuUU04+nEWk91YYX+K23X7c6hnReMsiHi0myGwFjQff2js/yCPzITtLQia/x
         Gw4AaVVa+cls/V5dnI0zlA6R6OHcs3M/lWg3NlnKSGXeQLigWiEdTBQwIQjp2Xc5Ute8
         pw2RgAdyqgVwg9ChGdqP5FMHFy2ul3Ui0qIvfB3SDoZeWx59Q8rRe3EBqvC3BwfQIBEw
         cUqeg9AUOQCEVc/Yl0fAbt0q3GzdD8WBx6QJcKx3GSrbmVfSrikxnQ5126AbeL5mjmW5
         6ZG6FJ8Ex0e+vIvHG1lk57IiqpIzP9Aq5HVraNvyh4zHjWicGyA6+dnHoIJjjqUGc82x
         oeUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=C4EhTO2uTFAIf5SEarDTXFEOPXxkwiiW3rRRfzCuo5E=;
        b=fOcSTGwLWZ4DDOHyrmvHGjGdW9iCErR6B88DYiUZaCPOc6MLTXqIszFVil0dgcCcqi
         4wbG9K/QR5hAvJy0ibV3txjP22D6M8CQvU7EBnvji+/lI9jVAzAkeyT7BebhAJp46KU/
         tu7OZuI6By8vu0zqLOSV0msO+UGPOO/vxZhR2uTGIdDOThpE8ZYWsE0mfvhRj/LLT6sm
         OCHUw1huargfAIY5IvQs5ISYb45MmI2AwwzMrHzwwf8NthESwAVUE6/yP8eXuV5lLwyj
         GB1pAX6HfKuP00vfnhkX0/KWdgPY4FAgqoqtm0CUSGTVgLry7sBAq6e7GUrVgiblLDCX
         oI1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPDyYLOT;
       spf=pass (google.com: domain of seakeel@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=seakeel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C4EhTO2uTFAIf5SEarDTXFEOPXxkwiiW3rRRfzCuo5E=;
        b=EmadG9jS2dLrsz28qSXIFTl38GZ2AEj0haxkClOT6WH95VxpY+OKiZa9UxCY17z4Pf
         A/INsPGJouaujTnhEwVq/AhYSDEZ50NX1wqtannhMAMW7GnTh6aUQC/+14O6+TC9pBPK
         b6F5Hjc573JrQaScGvR62YMlhsTaGBjgolGkBSj6TlTkoGXwNN3NkTaad5S6lg5oWYKj
         KJqgd9aThPRzxXq8j8Z/kAlSGhZ7EXieYXNhyXhQ/r4AE8IoufGi9THQQAqmP0fwUZjH
         zaSG81BHXLk9m+ds3CkCCZwbHKZQcoCUanK8PXXrKn2wYACungivpVm+Pnqe7dDGwHLt
         iN9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C4EhTO2uTFAIf5SEarDTXFEOPXxkwiiW3rRRfzCuo5E=;
        b=I2lpAIls9OdQG4g7k/ciMMaqMSDrzjxEXMejez3k99IwLZ/3dy48nNHcqCNgxLGBZA
         GbzUXSkZJ524q2Xdm6OUL1AW5DI+f0X81Ogov+trnY2TnJpUCTaie+8Zay5G5UPq/Ggk
         rKVyOTNe74BcxIrJpx8tJEm3StksG1H19kplIJOU98rpcdITleDepjyQT60TwTBSzNVd
         QpuAe4ufqpdgnZTRwALbDHBZqZq6di+bwGq0fFFEtjJcAt5XIsuqJETXd2dLdbRFBoUw
         KI8/5YY0qaZ/TCuBtxwPrRI52FV0zmU5N36FgTOAJUv8sx+2a7xI1NOfrvExELenCx0R
         TbcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C4EhTO2uTFAIf5SEarDTXFEOPXxkwiiW3rRRfzCuo5E=;
        b=PpSi5PVzMCrTRP1t2QWmQz3tVB/HzznnNXtwFI/UOIV3tAiFcfApPSS5X7QWSd92z+
         tbOXrwRCyWR0TOtFqpbVPAwQfOKbWscv3sbbkPVWEz2nyyQCns1QnmqfUcpABvYM6E6M
         evF/pXjfhVRPrs/aclT8Ef9RPKC8SPZDooQeX8LwYuaAGffWYK+citW5dGNoazS60/VX
         xEeqVWpiR+96qACLas6tIypfuqUVw7xs8yLzaR1mS364Jq1onGR9K0VblvCfFro6ogAP
         z2TyjQJmXZhaunLZVCmEUUeAVgItZJQN4v1YpjhDpBO9maIANlq7w6xEf00fd5bqX7H3
         IvAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Bo8tTpAQQh6/P8Gna5oeqq35M2yBx3s5eQwBJEd6pTQiTaFfQ
	L8IkyBBr2k8uBn8zGYPfecE=
X-Google-Smtp-Source: ABdhPJx5mp4PbHkV9RIPFER9XQfSqAfU30D1CDOfPCfTa5SZybR8rer//ZvcWFbEJoJ2ozb2SWDbEw==
X-Received: by 2002:a67:1502:: with SMTP id 2mr28330366vsv.54.1622727177337;
        Thu, 03 Jun 2021 06:32:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cb0a:: with SMTP id r10ls304893vkl.2.gmail; Thu, 03 Jun
 2021 06:32:56 -0700 (PDT)
X-Received: by 2002:ac5:c7c4:: with SMTP id e4mr12547116vkn.22.1622727176822;
        Thu, 03 Jun 2021 06:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622727176; cv=none;
        d=google.com; s=arc-20160816;
        b=IupGtBj49rLjdMlivFixi1Qsjw/K3nN+7J+wy5SPQ4vUPniaWznKkJns4P71jeb87Q
         Ma+8IITy4MbCHTuhigEkNjRfulN1TL9K6XehYjeBbackuoxPA9JW5uAD7EyLCk8zeDME
         GaQmosgysoAwgx9lSx7OiIS9VJn6pBxXbUWf8edFfpI5Xa0rBIYHB6JlNPQMqtL8BRJu
         Ph8xsG618vVwl7UkTs20PBmXDR2pAbW8R9UzOhbbiD+IP3nr/rpTLA4uT+xA81aK1y6t
         +NnbWnfTmrZxcIkGSoTJdubPUx+5sVSb6WS4Vs2g1Oi85fpV6mq3aQZAlKryHsRNqn1/
         KTdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=iEQOESr2EHarE2eFXszkBy1aNJ++bvs1j++M9Lxe844=;
        b=OfaMFsVQfDBywrnGYrt2bXKLPAqtkKHhXXRnyqJJTN/f3lv8tIsbYfWqJPw4CZdZ87
         L+SWNJQoWZjYlzARHkooIUmntD9fNxg9GqQhhkpLZo6fC0nGkkPgjMZKZlzUlh0SC2eq
         yjVIEYcm3DncnmZVvIgMEqZT6tzM2EPlLw9o2+Hf92n7+ngVUExxJOipwElLLobuZrpW
         5GRfvwgXiQ8XeHmtNVJgFXrKm+GEQ4uUnONmrr9eLEk3Kk5Zi2dkvyuChShsGH6T2O8D
         xqTFRIfahjGUS3cwwvpNK0BYDAaT5+VZh/TYoAduVdlHJySrCg6BhansIsBlmJ+DFMPo
         m1dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPDyYLOT;
       spf=pass (google.com: domain of seakeel@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=seakeel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id 8si362347vko.4.2021.06.03.06.32.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 06:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of seakeel@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id q15so5119542pgg.12
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 06:32:56 -0700 (PDT)
X-Received: by 2002:a63:d312:: with SMTP id b18mr39940154pgg.89.1622727176019;
        Thu, 03 Jun 2021 06:32:56 -0700 (PDT)
Received: from [172.28.99.179] ([139.226.50.128])
        by smtp.gmail.com with ESMTPSA id nn6sm2307533pjb.57.2021.06.03.06.32.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 06:32:55 -0700 (PDT)
Subject: Re: [PATCH] [v4] docs/zh_CN: add translations in
 zh_CN/dev-tools/kasan
To: Wan Jiabing <wanjiabing@vivo.com>, Alex Shi <alexs@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song
 <maskray@google.com>, Wu XiangCheng <bobwxc@email.cn>,
 Bernard Zhao <bernard@vivo.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 clang-built-linux@googlegroups.com
References: <1622723294-26434-1-git-send-email-wanjiabing@vivo.com>
From: Alex Shi <seakeel@gmail.com>
Message-ID: <e04e491b-69f7-f4e0-882c-6ce86baa39bf@gmail.com>
Date: Thu, 3 Jun 2021 21:32:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <1622723294-26434-1-git-send-email-wanjiabing@vivo.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: seakeel@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vPDyYLOT;       spf=pass
 (google.com: domain of seakeel@gmail.com designates 2607:f8b0:4864:20::52a as
 permitted sender) smtp.mailfrom=seakeel@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On 6/3/21 8:28 PM, Wan Jiabing wrote:
> +
> +=E5=AE=9E=E6=96=BD=E7=BB=86=E5=88=99
> +---------

the '-' and the '~' should be aligned with titles, like above '-' should be=
 8 numbers
since Chinese chars take 2 position. Please double check all titles and its=
 underline chars.

Thanks
Alex=20
> +
> +=E9=80=9A=E7=94=A8KASAN
> +~~~~~~~~~~

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e04e491b-69f7-f4e0-882c-6ce86baa39bf%40gmail.com.
