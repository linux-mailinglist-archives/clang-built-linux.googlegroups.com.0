Return-Path: <clang-built-linux+bncBCRIZROPVQPBB3VHRSEQMGQER64M64Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7E53F43D2
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 05:20:20 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id c88-20020a9d27e1000000b0051abe1bcbb9sf7869119otb.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 20:20:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629688814; cv=pass;
        d=google.com; s=arc-20160816;
        b=glmLWyKX5Thap6EGVE1yqVqq+N6JRxIm3z2/oUCu4IxDQa0RMFD5cQjRBn8yU1mqC+
         kDMQ9o/v4xqF+eN4mVeDBjrTEsYfbspNRwLSyO4jJvTJ3TIBExp8/dBZ5QfG3ONHglyc
         PSekYv+UDRvaNHxSR2qqzeNlM6Fn6mfbhVOueRbLfppxoCxjJlV4WDzhkXXA9i2/IqGQ
         T2O8IJA0TUKM6XTybcRzVKLUIQhQxLm5WiFg6SO93mIDtieZbXn4tQpwA19AVrQmqWnI
         q0vLFLXocJdLNuOuVAoprQm3VvI6Ed0wR34hlc/+IoRwUT0aw+SKKGrhKw2YaIdrSFya
         pF5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Y5blgHqO50zSoKwa9n78Bv+v9bqJF+jdzscbizpuj9A=;
        b=eelcW5i3tdxz1wMTA5UDuwBzbMohttl6h7Z+GkjBg6Wedst4CtLeVRsitD+UKWy29g
         23zbakLPE3/7CooWcY77YfQZjjHmEs0+NDx4TBW8nJc7WKxxFVaib/hkgHRWRj1je8E2
         Awpu2TWEb6p680DI6zwN2CLfWyCYLtN7FnJX7k6JoMTmDgQI9FZPyNPK8SWMsvnU13mB
         iUlKPjVJw9v998bDSHMpiqGkqR/jhKbngc6qtF4LqjhNLBWJEKzUi+Odt2uJpXNn1GIk
         81TZTWhKDfoEp2cFCh5T4BY0yoMDO/guCJKY2NC9zSazRYrlaahHG+l2J1qmfQkwh7yf
         Jjcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pe9LSstb;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y5blgHqO50zSoKwa9n78Bv+v9bqJF+jdzscbizpuj9A=;
        b=C2yEPU5gIm2NcpZ6hLgn3dt4GcE7/mx/SUIGVv85es7543QybJFc1KlWZgawBq1cZN
         YxdI2axHLHw6Gbjhgp9gtxwQYN02WBl9AhQ4y4UxmfqkbGUcStvFeQuPRdNAwPsI9+Kg
         Es1VC1oThFin23xRZ5p3RD3ESQr4uIS09ZXHPh5XLRYoExYpVmxvaHTrrippP0eYKJTD
         PM+j5N3bS+UWkd9nvBqFcJLwzlhuZVXewOPLiZbh7GmdBGNPfcybpeBLmecSQTITF4eG
         tRClul9/XUgoSggrEgHz5TnHAyZqPkEmnuTf+jxpugZqeKvJDtvApqIlrxq1zDQxOaNd
         LjBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y5blgHqO50zSoKwa9n78Bv+v9bqJF+jdzscbizpuj9A=;
        b=P8zN6vvfHJMDG2p2pIryp5u/bBQ4ugx5xWW+JogMERIPujT+IxAz6ak1LN1zniqnBg
         1UPOVHV1KZpRXzIFmQIPQxIxHZCLgAFAhZXKhyf4MoO9jYr+xGBQioBnrcW2zLqzBWvc
         pjEdz61WApJWdjSpUVHZlmJwqtgzn3oDBOWMUit6Lks0Wc0KsHl/ncfITdSRH2A2Zuur
         b8zfOj14m4PsUoIPz79jBDUxHOPzZmEzcx+O3mVimX6ydZCwI4xfgr/OEXCBW9nZ2e7x
         CBFTMnh0aGgK34pJc8U2N2EH169oakrjB7MJemCqleHEc6F9EaH7T2ysuivCUERz4dHY
         tmDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302e+HgeapVlk33//NRHLCHc/hWC5kl8nJAkIHOZqdAtMpUYBoY
	ynl6dzhIFmpF/VxvZkDJ7yw=
X-Google-Smtp-Source: ABdhPJwcgeAxqKS9X7tsO3LUO3H3C5rp6jZqZlDxfc9YjRR7/WGEEE64fWDWDPRnC2lMPtA5HUhwhw==
X-Received: by 2002:a9d:4590:: with SMTP id x16mr25941107ote.94.1629688814286;
        Sun, 22 Aug 2021 20:20:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:907:: with SMTP id v7ls510601ott.9.gmail; Sun, 22
 Aug 2021 20:20:14 -0700 (PDT)
X-Received: by 2002:a9d:4e96:: with SMTP id v22mr24721326otk.110.1629688813927;
        Sun, 22 Aug 2021 20:20:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629688813; cv=none;
        d=google.com; s=arc-20160816;
        b=FrEO1Jy/KkDiq8905KeJqA6OeSVir5G0o2RMM9Zlil1tGufadgvCUyw8BeZX4J32m9
         6rmmLpzJMZsJyhhVTeHySsEgB7Nr6gjP00ZimE38+BUHFt6Arm4R3rENgE4kQ6Ek5blD
         lXZzdodls4D4uxsp9E4JMFZwoCGL8I6c1Oyvgvw9VzsxCm0SE/cCy/cMPe/j+to2URRO
         7yrbF+qmFoTFz9cqKb68MLj9QPSb9SZY2NXcHvAJ82A3M4unpwTogBD3Q9UZXPBzz6Zb
         rD7EvIB7lSA1Wg0AONW1/X1FYO4T1y7dlminOKa33ZJYT5Rn6gK1g5xt/epyuAKE610K
         7Ukg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wtYsKkA+qwcxfUX/32ZOnYYe+lHQZhcnG3DQvUIUBiM=;
        b=XDsYjfD/OXd7uFXX3HKBtoPPv7JJdR9m1PGWJYeO1UzhzFf59BBnvWjpwL+yb9eL63
         YzYThm1MAm+UY8Wq9dFt41aL4/ToMyzPynAAcRNAvuUGyodwTb07emnpDFKDmbwpzxRV
         aqry6Ir41VrRVoGUFX6kZXI0ddOj5EON+L/MxQTwDQazoQIr0C0UJJfhIyYtNBVVgAo4
         XZ6Bcj/eb4V6EcDJ50Vyc87VwqHJxLz1tRxRElLxD9XxvQfcn+bA2UQPXKo69+RGu/Mf
         RFaK4sFLKLYH7v6zNRcGCe1xzwtAXag33ihN0Sai60Xcq4eoz/1AC30ER6MH3ua4igZ6
         j8aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pe9LSstb;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id bf14si409816oib.0.2021.08.22.20.20.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 20:20:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id w68so14119367pfd.0
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 20:20:13 -0700 (PDT)
X-Received: by 2002:a63:4f43:: with SMTP id p3mr30094716pgl.435.1629688813157;
        Sun, 22 Aug 2021 20:20:13 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id c16sm14105379pfb.196.2021.08.22.20.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 20:20:12 -0700 (PDT)
Date: Mon, 23 Aug 2021 08:50:10 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Michael S. Tsirkin" <mst@redhat.com>
Cc: kernel test robot <lkp@intel.com>, Arnd Bergmann <arnd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	"Enrico Weigelt, metux IT consult" <info@metux.net>,
	Viresh Kumar <vireshk@kernel.org>, Jason Wang <jasowang@redhat.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Bill Mills <bill.mills@linaro.org>
Subject: Re: [PATCH V5 1/2] gpio: Add virtio-gpio driver
Message-ID: <20210823032010.q6nhchhq75y724po@vireshk-i7>
References: <afc7b34cee856f1ed1a65034f4a9fe705dd04d6a.1628590591.git.viresh.kumar@linaro.org>
 <202108110419.gWPGrCf8-lkp@intel.com>
 <20210811035456.g633otggs5dejfrj@vireshk-i7>
 <20210821060804-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210821060804-mutt-send-email-mst@kernel.org>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=pe9LSstb;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42c
 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On 21-08-21, 06:08, Michael S. Tsirkin wrote:
> On Wed, Aug 11, 2021 at 09:24:56AM +0530, Viresh Kumar wrote:
> > I forgot to mention a dependency :(
> > 
> > https://lore.kernel.org/lkml/61b27e3bc61fb0c9f067001e95cfafc5d37d414a.1627362340.git.viresh.kumar@linaro.org/
> 
> Maybe just include it here for completeness.

Already done in a later patch.

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823032010.q6nhchhq75y724po%40vireshk-i7.
