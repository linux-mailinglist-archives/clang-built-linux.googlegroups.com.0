Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRFEXP6QKGQEASNLPWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 262492B23E0
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 19:36:54 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 64sf7286426pfg.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 10:36:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605292612; cv=pass;
        d=google.com; s=arc-20160816;
        b=GqWgvNAvUkudHpsVu2qx5QCM6grxt6pgKbwCXYaqHpH89vjOiIAgAnSIR9qg8CYej8
         3BjtDNanDOwhSoWKjDUhF/CczTTTDinwpPZYEHEC4JVx6NiqeMiYdeWJBraE6bX7wkET
         2YTlGRXcqS1Mq1+cfGeJRZwBgWSH1n19B4Z2aBgRMLGsOHmvshEgDN73HVknrQnFaq5A
         owqtLNU1a0JApTv3h2TrYjGdFKmlTtNgFiDUnpSOLcYmZLbjDIzvSQpBVx5JxdwiMkOF
         Jsc9yMjhwEJqM70sToSdD+m6JUvmAHJdsIHFPA92lk4vwnkVoojqOknxhggcbYM9GIn9
         ZCrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=HH1FEyvdZ8Qo/BcfPs4Ri8dhuZHQSGyz++BCsN7F/FU=;
        b=oytMR+ckYA9JSDwxRzEXKaaQZohtV3DVkhwEvMdoXfgA9QE7ywfLYCaqO6puIE3OUO
         W10Dn0JhzPuuxZI29839v0PpkA21FH8rsLSfAxUryH0V+2AxVEoSj0DA5ShmuZdYOoh2
         5Fq6GWcSRGZF+CE0j7jXhOLplcoO+3tiCT4d+2IcQcxYl3jc2s/WauY6woqJ92vfvfp3
         dVcNnD75dTer7Lz9LcUrI1Y+WKzFmHPCBX7+aSVFgBntDNHNC1tsOShOequpSONXpjN6
         XE9+y/FpFcXgl5UgVkU1a4x5niSeEa6x5L7eCvtQpjjwkiX+lGkFuOhXXAWXXBNf3tqk
         adlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P1KvIekJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HH1FEyvdZ8Qo/BcfPs4Ri8dhuZHQSGyz++BCsN7F/FU=;
        b=eD5/dU2V/RJ0Kt96Um1uUUzCZ2qOO4e8Yajr9x2DAfGLwIkY12y1sedaK1BNzSrfqS
         9BdIKOOm18jLwt7gk5KCIKq3dEn2R/IWmL8oSL21MPIR4y+NQp7YphYP5NSS3H5KiSPM
         y1sN1RhaTFkl9xmVv7K0HBnKMIFgLEWwNGUU/1pwVGSw1OEZyOHHNNVx296NFolhem7o
         DuYeniWZ0TkD7h9YWldJiSQHV0jFh2n4DEWwCf8NyBzA96ZSM3mg5x3VcOdoP2LCnCUj
         mLjqMFehrt5qr5LSgDMPC+0gvmAJkaSeqk2JUGb3xqqG54YaBEA9xK8nyIDw4iRCWBAI
         uOXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HH1FEyvdZ8Qo/BcfPs4Ri8dhuZHQSGyz++BCsN7F/FU=;
        b=n8tX62YiwW1sdqaUM3cybmH/Cnc/VG0Ma8vdst3QCbJZ0xybzc2OQlW8RuT2oE7uZy
         IGXHLQ4cjmgSfNM347ZwaQk2KH4AVc+36LSQAarTO2NNLbvJDoKsGxfxvMYFAU1uhWyc
         37nDdHOdEBDfg31WveWNSNibxK9eghjrJeiUZO9751krIdVkv0DFs4q63uj83xGr5oSQ
         GFUSA0zy0rtTjjX2DFBh0UpTdFKxvADYwHfGVyLRiOnKoHrxuVZ+kqekCCEwbEUsb01J
         BK4m5nhDhO0z0Om9ZzUynt4/NOkggkDMk/afnBZrPEHT28RK14zcKkXESAX5W752fwvq
         f9rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HH1FEyvdZ8Qo/BcfPs4Ri8dhuZHQSGyz++BCsN7F/FU=;
        b=YfnP0dTkh3IMk6cJGBN2r6O4yZKE6Svd26O24n/lNe8fdcLlp2QBJi+oY4rbdJQXD4
         LYlF/+AToy5azl3jlZynMzRYrnjGUnZ25NazICedHP/62PKQFuNgOu/Rpc5qOZNfdyQA
         69JpGy0U+6iYiXCY2sv7kcf40X5tJfnVriMhPE+DpAYYJVh044dIV5AoqiEnx1sphnaB
         v+m2SgC8MVR0+a6rTi4d0QLDr39q5XEca3ZE5RxUjrK9xb7/79p/skNgXg3135gx4W1e
         hVSfp6foRL7Sfy5SjIYMFM+Obh4kTH90BV9/D9HLfDwVMhM2iC+HWw9kyfhtrNisR1F+
         5/qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mF1r0dmla74lU1D8iDE2M1A7fwvhxSap072M+cmOUxso2TASb
	mlZwsDz/QOVvu4+XqRd7Kw8=
X-Google-Smtp-Source: ABdhPJzifn6N4DWf/nL0SzhYa4aAX3eXcAvrAqjn1sgyuwWRcfttOzqV3YPr8nU0E2Cw3exhYnWxqw==
X-Received: by 2002:a17:90a:9dc2:: with SMTP id x2mr4437349pjv.98.1605292612420;
        Fri, 13 Nov 2020 10:36:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a47:: with SMTP id x7ls1122259plv.1.gmail; Fri, 13
 Nov 2020 10:36:51 -0800 (PST)
X-Received: by 2002:a17:902:c254:b029:d6:ac10:6d50 with SMTP id 20-20020a170902c254b02900d6ac106d50mr3398694plg.48.1605292611850;
        Fri, 13 Nov 2020 10:36:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605292611; cv=none;
        d=google.com; s=arc-20160816;
        b=y/jiIagG/JxZ9GMshb3PIK4NiZcOH5GwgGbgLC6OpaaFOiv1b5afTdmVvbxnEn9Iz0
         BZAEmp4fsZEPLizM09t/HmQOyJyrb8vLyyMsnYBIx/BSSoxxYuHtojTJhBhd0We19d+1
         wDijBO57UKi3Jn7wexipDovy/PIEPpUyVGq8oMI4hUgEKN0qBIcF3sovA3sikdhrPH9T
         Lmpls3trsbuod+JMzvsum3ba5T5eYpMUOfwKy3niswgZE7l/D3RHZep5cXRoR8fv1rL6
         hcLxeqOoWFfe1xZ4NUySWv/lhFQnzDu4vp6DD/poE5/9mFeaeiZYpyjPF+STVGRszwil
         M5TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uLLsU6PNK7gn2ZF6sgEbNvfAguFm+Twkz8HSYgMSdHA=;
        b=jpWHXMdDKw7DT8urMFqJQzfOYorOPMUscspYwijIRPEn7kvbgGvOdXAOZbHvDZjGUf
         SShoZJZOB91dZ5e91Zqp2A3JnXYxaGBNTXreJR0ukXpSQaDIAVPeR1mUDZZGcuTA5EBA
         SouSmJl+X31W4u/t3tKdqDv1w363I0YBaT6qp2jrEayTZ/bHsetJYQbcmkQ7aPcC1tZO
         viZBsRP1vjxxiImdTVgVgSNyYwhwIToaip7y+0aGZnjQl+7eMsC17zpt/TES0sjASAbA
         Hx3zdLkERR4R1S0XGB0PPJ83SKhH2nltob2z8A3ZMHM5ydT4NtCWggetppah8nSvDTRQ
         fIsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P1KvIekJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id t126si628229pgc.0.2020.11.13.10.36.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 10:36:51 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id 3so7397830qtx.3
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 10:36:51 -0800 (PST)
X-Received: by 2002:a05:622a:86:: with SMTP id o6mr3179517qtw.147.1605292611012;
        Fri, 13 Nov 2020 10:36:51 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 207sm2500356qki.91.2020.11.13.10.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 10:36:50 -0800 (PST)
Date: Fri, 13 Nov 2020 11:36:49 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: "David S . Miller" <davem@davemloft.net>,
	Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
	Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ipv6: remove unused function ipv6_skb_idev()
Message-ID: <20201113183649.GA1436199@ubuntu-m3-large-x86>
References: <20201113135012.32499-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201113135012.32499-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=P1KvIekJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Nov 13, 2020 at 02:50:12PM +0100, Lukas Bulwahn wrote:
> Commit bdb7cc643fc9 ("ipv6: Count interface receive statistics on the
> ingress netdev") removed all callees for ipv6_skb_idev(). Hence, since
> then, ipv6_skb_idev() is unused and make CC=clang W=1 warns:
> 
>   net/ipv6/exthdrs.c:909:33:
>     warning: unused function 'ipv6_skb_idev' [-Wunused-function]
> 
> So, remove this unused function and a -Wunused-function warning.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> Alexey, Hideaki-san, please ack.
> 
> David, Jakub, please pick this minor non-urgent clean-up patch.
> 
>  net/ipv6/exthdrs.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/net/ipv6/exthdrs.c b/net/ipv6/exthdrs.c
> index 374105e4394f..584d1b06eb90 100644
> --- a/net/ipv6/exthdrs.c
> +++ b/net/ipv6/exthdrs.c
> @@ -906,10 +906,6 @@ void ipv6_exthdrs_exit(void)
>  /*
>   * Note: we cannot rely on skb_dst(skb) before we assign it in ip6_route_input().
>   */
> -static inline struct inet6_dev *ipv6_skb_idev(struct sk_buff *skb)
> -{
> -	return skb_dst(skb) ? ip6_dst_idev(skb_dst(skb)) : __in6_dev_get(skb->dev);
> -}
>  
>  static inline struct net *ipv6_skb_net(struct sk_buff *skb)
>  {
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113183649.GA1436199%40ubuntu-m3-large-x86.
