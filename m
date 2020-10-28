Return-Path: <clang-built-linux+bncBCK2XL5R4APRB7E44T6AKGQELKMBKOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FD629CE5B
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 07:23:57 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id o14sf1674081ljj.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 23:23:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603866237; cv=pass;
        d=google.com; s=arc-20160816;
        b=kkaevL0zMAiLcn6YkiEFgrHtsPLsAlQanuJJ/ViK6LNkEoUqJFMCSKpucnWXlC/iN+
         Zj4BqiYJI6ObpreuyGNLphKp/OK4fG2m+O71D5h8I2N1J2M19z8ncLnHAor4lAOvnob3
         u2+qntoHGmkprYFwgTSobv3yoiTwYRmkKj8Ojvb6sC9QjXOoDjzEHJr+7lU4qdp48Q5+
         dNh0QmksFsFix2kFkJjzqGUCKXHksml3Zt7TOdjTApqumJvVTVivVCHiOJT+VwRIFrVj
         zScMAhwa/y+AWLZ9Ozqb7OEfhR1ouFaVjcm/oEBF1U6B2ExXs4G3t5IVc6op5zuN5U9z
         2GPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LW7EuYUQ8DzAIkHat7LQS7diVtApkTv9reXJuD0LPyg=;
        b=BxJVHkMyx04HnJVN1RMUzIDKfR94L/AgPQ0EI4z9FRY1ko1ITd8QYh3brbQhMWu9LH
         hNj5UY30TYaIZCIXv02Z99I+BPzTMBDX7bpJ/mluq26Z7Inov3nVk0f5wPGpHfy0pLnq
         4RL6CTyjzGBt6WSinqG49XnTqX2DdSnhOgfRwsEpZL3dbZc1HNijw15CQ/JMz06b+e4p
         9FwoKFg9KrbxkPHpgcPVg6yUpEAVJVfWqDw6G5WYirSuqyZLcwL0oQcZpD2KhcQuJgfU
         kEOKJ3NqtF4JoSpBNY7kEha/9y/pN3h6QSem5Ko+8WuUDV97GQqL+JsFqezqtUIfC5Kr
         pntg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=BPbuO5V3;
       spf=pass (google.com: best guess record for domain of batv+85eade84990f54b3e2b7+6275+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+85eade84990f54b3e2b7+6275+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LW7EuYUQ8DzAIkHat7LQS7diVtApkTv9reXJuD0LPyg=;
        b=LHWXVJp3cMJJSkZTtgkiTPtaGp6lkZL4lyNGL0TkQwYcjlRpNxY3T+Q53LfQvTs1Ks
         ZzynJVzDlbkvec9Bw0edOtDZrnUxm53c3JGUPLzJREWGpcwq441w4EqYaBZQwfnrl5kM
         8UcVY0GMVK2VO9WbUNzA9Y1wuT4unmUyLpqr7HCfeB32kcETM3XzmHJOFpRTTB2VsKfw
         2W6dqBhoFLraZu1pTo1xcQUcrAg+cl2z4J0MKy95YrSaSI8dWj9eY90/vax5Y/wcSm1u
         N7fAXrlAL6LmsNQDw/JV5RhgVAc2av+UoDHqO+VoYH0V4DRt+ZpHGnskBW2IMuM3Oi9s
         +GCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LW7EuYUQ8DzAIkHat7LQS7diVtApkTv9reXJuD0LPyg=;
        b=I2uUNkUI6eqRNT62jQzM88wMTCBXKcrI048AV77suVzdMJRFyBy8fWQvEUwq2JgTn3
         4nnbxwQG7fjBpXTqz7wSjCzRsbAJGAqmttqRxiUNvWJa6FONYWSFncoBoeN3/4rVmq0A
         a5bqCfVHbdODlNWqM3SNpnn9XTx35j80fXEXpi8kFG+IRBuB5iuwiZICUyz1VVKAM70G
         XhuzEv5uvzBGaGsfYXtqmr0xPMX7p80nJXE1raGFuUy2dyLF5AbaWk8grbwGX2Rg7lAo
         X5F/HNbWIoeGI6frqmWZBHymOuIXWjLslSv2M26rfi+YrvDpdtzgQQ8Bg+tEvCCdlSEY
         Me6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jAM5Hs/XjUD9s5rd4i0EKQUBZ372kP3tm+kG08KoDLlbDBLvO
	Zh1G7NLMjllJNK4wKd9pdN0=
X-Google-Smtp-Source: ABdhPJy7enn/k0CLNZ5vG2mWMO8O8u3SnZ2NxsZ/7xHVxnvtdDhLWR/BGU4VeWvhWoe/PSo8wTyJow==
X-Received: by 2002:ac2:418b:: with SMTP id z11mr2305720lfh.371.1603866236786;
        Tue, 27 Oct 2020 23:23:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls2099782lff.1.gmail; Tue, 27 Oct
 2020 23:23:55 -0700 (PDT)
X-Received: by 2002:a19:4bc9:: with SMTP id y192mr1994461lfa.447.1603866235759;
        Tue, 27 Oct 2020 23:23:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603866235; cv=none;
        d=google.com; s=arc-20160816;
        b=roy5+1HQNkvNP7CxWGh1119SSEl1VM7PE3vIWxmrdEwmxA0xt/oFyW8ljLYXzALtuk
         5PCA6vK6xkaK6aKgBtZNMn6FJVbvzNO1gwTH3hNVqxTO2875bNdsngBFSw7EgU2/duWI
         /7jyDNbqQUqXKHOucZ1agRUFBkiabrr+zP8J4eTZN47gKtWErDNSpRH2IGyP7178S0N1
         2WiTiDaPIy5zOs42kIBVk0v4Eh0Auz4e00qwl4DScNaTK5AyaWF6yQ2VpOU5kyBiDENr
         mGZL9xCxO6EgjjSetmLc1iqSqKw6AQgRXMhCmRf9ih9GNjqhFEtOKwiQW3Yk75POAmXs
         LMQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6utoMtcBr/nbW9ldHrxB2+C4zosO2vmkmbKG+2j2lgc=;
        b=eL7ZoCVglrl522JLF3/LXcaEOkWq/UwN72OLENJutjTTbRcQATdi0fdbZDvJeUEudI
         +sEUhB9GOWugykhYsVn3s0gTAneq3bxUupjIZg3xTTJp7OHY3OThkYSa0cnXZDAwjnDr
         6jSpbNE6o13QnBg3NPuqsICMT1NR3sNPoTDJrF7M15P0rqXQ/fIxEPKfnu/rY3xngGm3
         zyMjOJSHKyNuuwM8lI1SWTDNamaUTpZhS1kocgSgvY0hKuw9UQNnsjXy6qHLdoLXseau
         ElBP4LMRxp/MY/SQBbdjXUZ/aZC5BAt6n09LkqR5ndFuc+oEdvwy0XIZyajUUK/iv3jA
         h/vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=BPbuO5V3;
       spf=pass (google.com: best guess record for domain of batv+85eade84990f54b3e2b7+6275+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+85eade84990f54b3e2b7+6275+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id t20si98056lfk.10.2020.10.27.23.23.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 23:23:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+85eade84990f54b3e2b7+6275+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXes3-0004kE-TB; Wed, 28 Oct 2020 06:23:44 +0000
Date: Wed, 28 Oct 2020 06:23:43 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Christoph Hellwig <hch@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] seq_file: fix clang warning for NULL pointer
 arithmetic
Message-ID: <20201028062343.GA18092@infradead.org>
References: <20201027221916.463235-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201027221916.463235-1-arnd@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=BPbuO5V3;
       spf=pass (google.com: best guess record for domain of
 batv+85eade84990f54b3e2b7+6275+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+85eade84990f54b3e2b7+6275+infradead.org+hch@casper.srs.infradead.org
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

> +#define SEQ_OPEN_SINGLE	(void *)1

I still think a comment explaining the magic value here would be useful.

Otherwise this looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201028062343.GA18092%40infradead.org.
