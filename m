Return-Path: <clang-built-linux+bncBC7M7IOXQAGRBJHCV75QKGQEOQS7OOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F4E27659B
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 03:06:45 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id d10sf515535otf.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 18:06:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600909605; cv=pass;
        d=google.com; s=arc-20160816;
        b=NHsw5Vrcybh1e9KyvY5elUCYlju1J7+hfM3AtTm97FtHdYV8EbVPqP14eJ16CJDQ8z
         B/4ptC56x7NK6qURmSbVh6XnLx9kI/FOEfzUOBiovx+EiVrazH9oq7s5z171r2/uEjVZ
         +BsKGe8LFfkMQD9as3KF7OhFJE7KooM8wBbSVwp2Vy7GExwbtW0hRGYJgjWwam9ZO0x9
         8mJXaql4X+e2r/3cwEJ+Hk9Ft0bIn3kM15kS/dOXaqwfnwxR0QlPgzPv12mj3uvvUeq1
         vsd8Fp+CiKVdz8fQATXEgKYaI6rItsqOTPuYdwThTY3pfnJh63XtgXEjoXxGozO2qT2Z
         8Whw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5FdBkavlehCylFyM210a1HxgVx4jF8Q7W6/Im9PXpsY=;
        b=ycodc1Uf4hz5DjbSpFF76YErpUZL7TrtwK8nVd+tkFwZHKLZEbY0TIAmy+96e/VQbj
         +WThFEFhy9KdtjZk8JOhgJgDhGyFx7faWkp1Fnqe3d+kTcjOhtxU5a/rHaZA+9t+m4wU
         /APfopzEI0urGSI6lbahox8VGOuiIoia1qk0FEdMyfj7Kv/oX179/lPp9viPLRIDofNe
         PS9bL91YqERksIzrXTMAYk8Fn6liY3AFwHy1aRDAttANcApczwjg2C7HeZa4sX63WlWl
         1UcHsKdeW6a/FKxJNTks9XWRtsjSC1Q1gwUo5Sb1nptvhUaS81O4Tubo8LZhNzpG1N4X
         sZPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L5evM3ex;
       spf=pass (google.com: domain of maze@google.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=maze@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5FdBkavlehCylFyM210a1HxgVx4jF8Q7W6/Im9PXpsY=;
        b=D4D3W3ep1LLJJ+QvnJYk2FvCSm4XL96arILfjycRfhilDhyysuwTsjU0Q9vegofq1w
         OzovB59ZMncAODZUq1f+6sHD1dIIMcevSKQnGUPR8LyQhQrv4k2ZSjefDRMP7S63kkne
         3L72yDew7e9EeoBTK+YJCkBwEeaiZhA1AE7QySywyrp3VDfwOichpy7hfxsmy6Snu+qn
         gMLgp5/JbOQkoCA6dFg7zzm+DkZ2CPOHK9/s2MJxZiz6FyRl8OwOppp/N1kTR/inQpu0
         PHrmp6+MnWbQQ3BNiKSIAUlrSetF5BAvFjDEaWd+CnHPUefghjADYZGIlgpvzw52Yalx
         PeBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5FdBkavlehCylFyM210a1HxgVx4jF8Q7W6/Im9PXpsY=;
        b=tmJeR50VYYvvE/xa7NR97nMhN9kNNHqTIG+Ly5RMffSRpMVhAS81QnqHRScacEwzKC
         NT5wSrMkpFZhaY1wDiQUnfBi0mww7H0TBHMzNK4rlBLqaaomlc9yZgVH6plO8vxvY0C9
         srR5/eBB6OG04VCEGtqW+90OC2LVIXEw+PcORbJJCSjtLm+VsBlqAhXmC1HqyvFHdInU
         HOHplbR5Cd0/HRbkd5MhD+/O10BzkjSPPFKzhSXK46AUj+vXQko3+EIFnaoSpP+lKi/3
         UP/O3OZUoZeOCX8T0+QIOlnj1w87Y3TpI+1x7/tgZILESKpJfamPNriP8Hk/dteqNCm1
         s3QQ==
X-Gm-Message-State: AOAM53043w9YoNJbObtnD4Wen73TQoJkCtnHHGVb/SK65dLroruOaQrW
	KJIPn6JHYmytr/Iim1B3atg=
X-Google-Smtp-Source: ABdhPJyonA2Go4/YxOy4TN/2iDmn1QxTPJNYev07IMl/un0NF+eYRqoBmKt27ATd2rTBnQlM+hzjjw==
X-Received: by 2002:a9d:1726:: with SMTP id i38mr116520ota.252.1600909604819;
        Wed, 23 Sep 2020 18:06:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:8c48:: with SMTP id v8ls82398ooj.7.gmail; Wed, 23 Sep
 2020 18:06:44 -0700 (PDT)
X-Received: by 2002:a4a:bc90:: with SMTP id m16mr1678719oop.12.1600909604468;
        Wed, 23 Sep 2020 18:06:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600909604; cv=none;
        d=google.com; s=arc-20160816;
        b=ptknSBBykkkDVW9u8O/dLMUYXUkRnyUcCwy0yJ8N/dwLyhbEwYw+2cYzxXJLcUQOoo
         TldEOSTJhsNRhf/YFDk2iOpeHw1PqZbNP7YbclTi/fvBuCojJTjJeqEZQavsn9YUzQGj
         HEFfCqwDDZSKLcH8O120ceeDSjeHj2MH6+MkXjlmBWvS3gfNoBWE1HCJtQiK/ahohKyj
         dfj199em2SwLzyn9gCWgpxovXyznSI3m7/UdFBGyj40Tq4uzf9MlR0qlVp9UWye6BIGi
         ixy1FwDo36vA2zWq52XzJDj0Ab7kvPVpVLaXz/k+702cAu3LhJPf6mfsPa9CDeY3pgl2
         7S+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MyJeopwM3d784deUc8QfDgsHsd0NvtCbQzgqZCRJ9gY=;
        b=XmOs1+TpRF3eXqkRlLEnFsx0zBrHt9s+DZxz3dDosPOtoAO5PrOfONVJ/64tzhTZFa
         xc7/2kzmG5iwjNixdZEtqT94ewjbAG3oa2LSoBLe8hUz4rhHcCSiWjcnSUTRoW2NNGkK
         Gi1whhT1K1asy11pQtVVQ1Eg+SA10dxDIb5JANqnluvo8m7eNoDY+niYAru6D+y2DdwF
         mlE7hT/Z41O3olDLIpWkzwBzT+ZjKHddMIhhHu4lgQjf+EnMOGY5mJHx0g5f88nTsYL7
         1kskYGe8JbIq4RjTeWFHZCHGNwSkcgqa/k1b7RJG7dHKhQS+EtHVKLsjfBELGH9+vUVz
         MmOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L5evM3ex;
       spf=pass (google.com: domain of maze@google.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=maze@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id u27si133304otg.5.2020.09.23.18.06.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 18:06:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of maze@google.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id z13so1523467iom.8
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 18:06:44 -0700 (PDT)
X-Received: by 2002:a05:6638:144:: with SMTP id y4mr1699803jao.61.1600909603971;
 Wed, 23 Sep 2020 18:06:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200923044059.3442423-1-zenczykowski@gmail.com> <202009240537.PKBbxi6l%lkp@intel.com>
In-Reply-To: <202009240537.PKBbxi6l%lkp@intel.com>
From: =?UTF-8?Q?=27Maciej_=C5=BBenczykowski=27_via_Clang_Built_Linux?= <clang-built-linux@googlegroups.com>
Date: Wed, 23 Sep 2020 18:06:32 -0700
Message-ID: <CANP3RGfc6y+Vafi2Wy5-gFKbcHacZsfLFfmPRx1f5y_7Zw00sg@mail.gmail.com>
Subject: Re: [PATCH] net/ipv4: always honour route mtu during forwarding
To: kernel test robot <lkp@intel.com>
Cc: "David S . Miller" <davem@davemloft.net>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Network Development Mailing List <netdev@vger.kernel.org>, Willem de Bruijn <willemb@google.com>, 
	Lorenzo Colitti <lorenzo@google.com>, Sunmeet Gill <sgill@quicinc.com>, 
	Vinay Paradkar <vparadka@qti.qualcomm.com>, Tyler Wear <twear@quicinc.com>, 
	David Ahern <dsahern@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maze@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L5evM3ex;       spf=pass
 (google.com: domain of maze@google.com designates 2607:f8b0:4864:20::d41 as
 permitted sender) smtp.mailfrom=maze@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?Q?Maciej_=C5=BBenczykowski?= <maze@google.com>
Reply-To: =?UTF-8?Q?Maciej_=C5=BBenczykowski?= <maze@google.com>
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

On Wed, Sep 23, 2020 at 2:34 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi "Maciej,
>
> Thank you for the patch! Perhaps something to improve:

This patchset was already superseded precisely because of this issue.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANP3RGfc6y%2BVafi2Wy5-gFKbcHacZsfLFfmPRx1f5y_7Zw00sg%40mail.gmail.com.
