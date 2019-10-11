Return-Path: <clang-built-linux+bncBC6MFNV32EFRBDUDQHWQKGQE2WJWGBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id E3405D3B87
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 10:47:10 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id k4sf4044154wru.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 01:47:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570783630; cv=pass;
        d=google.com; s=arc-20160816;
        b=TsjMVQHGtIvRDaM09EQ5sNSFIDU2pQ0RIUW8RowfjobsvxRxz2PyytgP7HWY9BWRYu
         2jhGZ/JAzuvO4kIGlT4jLrXuWU4CTDb1HTi24ObbMlBp4SqYl7P2A9IJ95z0/1je0UZd
         1ZLv1x6VZ+ELE1Smsyn5GpMCFlVP9POVDYV7OJ2W7OHgnJF4NB9aoelylLZ9Lh7RLHH3
         ig3bCnnSO0bf6zBCrAzkQmYQUqGVw22VOb6WYh4BR3yEgrK304XIvo27WXxOqA4mMc5n
         kG+HKuu0F1E1pxel0Ndv96QLjTZLJ6uF8lKGnZSUjjr8annIZ73uk1ngkgrT1sIcpvbe
         2Vbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=gx+2kWVXUPT0j1GO4fp/yAPu3ovXUF+iSeh/+ePL+3A=;
        b=bTqSP/mJ9Y9bPCC+ZJ6zRHK1+OOj01LnHbtaAHKp6PETABLxzsZ8DXkzN+y7KWZ4Hi
         vDR4iz4WW0C1vHI0iGjylEgKeysbl99AOPfKW+YAgYT+dYAPSOUITEhuLza8+CV+movg
         /Q2O2hqYNsmL5YpALAJUmwRrTmXqHvQVZOx5xXt1BknPpzOeBN/xmXsCv14aHNEKL4Da
         LefimDZW8aLyxg4dXhx84RZOYqC+5V5xBjwr0mMD1+TGacDl4b96MGnhA8p5dcqSCJDt
         f11yWi22ew6htVh/YPO0pyxBR1MiPd0UDjGFHgQGPO4O4zky7ZgJ98wFFi/xPLVcrMem
         k4Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b="ezYaY82/";
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gx+2kWVXUPT0j1GO4fp/yAPu3ovXUF+iSeh/+ePL+3A=;
        b=XjV9u1RTai+wbOL5BdNQgJOWDNik9U/UAWYEQqasMgtSIuqFobv67zXB4Iv42E9T9h
         QuKHD5PWTZ2g91HixMzrZkL7ErM4tUvHlWOe1Genr7B2sLjpLk0mx7/ZDrQZoPA5kXNL
         iStVZI/Q1aNogjG2UuB0qb9fSTApPuCVYEMjrDZGjjKOLWZFsX+zrtZ0GN5dyle6HvYf
         6clih5FaZlG3gk/rEl4JQgoDeNRqV5TexD3b5HjWR2v9ZMRnzMk/9xeJYwXUNduZI8Z8
         j2MiJ+ch6xk/VBYxw/oCVb4K7igFJgcmoOF+xh9pP/oiX5IZfPccmOKS36l5HekQF7Lu
         9GQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gx+2kWVXUPT0j1GO4fp/yAPu3ovXUF+iSeh/+ePL+3A=;
        b=XbbUZYyq0+IPODTZCFH/iiBqT5AHonh4DNCcKxgSz8IkZ8ssYo5zjXkH7+G5DqltS2
         vCsstuGv8/mVKJFI1ZWoxBB0hS1qcUlHyGZPpdlz5YrXecTaY7fPVOEnPTn1dXkhzZmI
         AulQs48F2t3Z5FvCGVZICzxHqAndQXmzOnLB+1gx8mcWfNx2hnu4kxX5UIpGdGcXC3eP
         k3wNwQAg3XND39SVBNF9XqjsNYcj/St0NDymz0BXNImf66qD8OGQNDr70yp/RLMOJTDb
         brBzmvpLAIgBXbQIhuQIDDClPfAYXgBq1nICB/YeuSmHblWE5EHj+hIXyaczn5QOJ+e4
         J7Hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX6nSsAAMh7YJJ/sppcHSXbMrowKp82jdjmmenFYCsG/+7fDcxf
	1OUFThPAumWbbXi5N0br2H8=
X-Google-Smtp-Source: APXvYqxDhOdiEM/JKgoq/8daBIBY246ZnqRlrV8Pcvzzq4uHNSUjAvtonkXix9Hr/kCX9+QyWGUZIQ==
X-Received: by 2002:a7b:caea:: with SMTP id t10mr2422945wml.38.1570783630549;
        Fri, 11 Oct 2019 01:47:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9d8c:: with SMTP id p12ls2317192wre.1.gmail; Fri, 11 Oct
 2019 01:47:09 -0700 (PDT)
X-Received: by 2002:a5d:6383:: with SMTP id p3mr12266013wru.117.1570783629813;
        Fri, 11 Oct 2019 01:47:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570783629; cv=none;
        d=google.com; s=arc-20160816;
        b=ssaYmnFk77MW6cVnpcPwSzbL8rkjnnxfOtBJuF3pw8/FiRX3QqfLqkh8/dsuEpZHhk
         vg8LG9bq2Km/Q93SbUvEyahbz0QYI2SRcCzp3nD6KlTknTYVbxVzHyNIT+5pU3AErrS0
         vUwDGD7fhcVwUW+4zr8K9tEr8HRU7m5pzn9g8h/mMjJ/PV55ZC7Ui8X7/xw48Pw6jT4a
         l2OdzFFygdFnF3JbScQSVdFqZBcXQutUaO51iKJgpovddOXtlnraxGVEzm3eawhG7WtZ
         RoqBlOxS8Nq+BUODVY2DWZh3smlLUPtGsnNb420Mt5AcKBgdmul2nWDtY/74kf+FBZZ7
         bgdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=R43F48mYqD+CZbcetRaA+1V2MQ8XuiZoYmoUv8JpK8k=;
        b=m1PMJ9PjXAzfJqUI1pNrxSZkvudG42JTKe+ugFR8vABBsYNBdlZmI9y107yA0nBzoX
         U1r8X4iP1xv/GyvDJ4KuPYhbhyTrzv1UWiA+7UxqJzuQuDkQZpGX2NuM/b3upQ2AjL+7
         bp5xI5LS0yfysfQaIReJJjLF2wI4zT7mbMYRM5plT3RWr1TI9prtURIVktA2vvasoM5K
         zF0Nf9OzX2Fgo2OLqQwjLcR7B5MsCH23A7Yjy3eqF3ekrizAKkSg48fR1meTGhpEzQPb
         pRexJcKDrECDr+yF6AmvWaahGrP3QtQgWH1usqeb9s1uBetaY8GPi/NrtPRU9Y8ctXDy
         T2ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b="ezYaY82/";
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a133si763591wma.4.2019.10.11.01.47.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 01:47:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id n14so8975494ljj.10
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 01:47:09 -0700 (PDT)
X-Received: by 2002:a2e:9bc1:: with SMTP id w1mr3267256ljj.136.1570783629230;
        Fri, 11 Oct 2019 01:47:09 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:86c:2e5e:9033:59d0:e194:cd55? ([2a00:1fa0:86c:2e5e:9033:59d0:e194:cd55])
        by smtp.gmail.com with ESMTPSA id u21sm1984557lje.92.2019.10.11.01.47.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 01:47:08 -0700 (PDT)
Subject: Re: [PATCH v5 bpf-next 05/15] samples/bpf: use __LINUX_ARM_ARCH__
 selector for arm
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, ast@kernel.org,
 daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
 jakub.kicinski@netronome.com, hawk@kernel.org, john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
 ilias.apalodimas@linaro.org
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-6-ivan.khoronzhuk@linaro.org>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <fa252372-b518-213c-b6f1-60520831e677@cogentembedded.com>
Date: Fri, 11 Oct 2019 11:46:54 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011002808.28206-6-ivan.khoronzhuk@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: sergei.shtylyov@cogentembedded.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623
 header.b="ezYaY82/";       spf=pass (google.com: domain of
 sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::244 as
 permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
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

Hello!

    Sorry, didn't comment on v4...

On 11.10.2019 3:27, Ivan Khoronzhuk wrote:

> For arm, -D__LINUX_ARM_ARCH__=X is min version used as instruction
> set selector and is absolutely required while parsing some parts of
> headers. It's present in KBUILD_CFLAGS but not in autoconf.h, so let's
> retrieve it from and add to programs cflags. In another case errors

    From where? And it's program's, no?

> like "SMP is not supported" for armv7 and bunch of other errors are
> issued resulting to incorrect final object.
> 
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
[...]

MBR, Sergei

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fa252372-b518-213c-b6f1-60520831e677%40cogentembedded.com.
