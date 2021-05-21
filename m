Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTGWT6CQMGQE3GJDNKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 5711F38CBD4
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 19:18:05 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id p11-20020adfc38b0000b0290111f48b8adfsf6238482wrf.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 10:18:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621617485; cv=pass;
        d=google.com; s=arc-20160816;
        b=VD2SfobZIfQYIM4G/ABH9jn4JOxkQFVcuKnAfjig/epY0MZPW/FRT5JQIdDuuh4yoJ
         OSqNi07oLoaudmQOCxLIhzNMjn/7LWBNFYBdELIp1odwn//vW8R0Vn5g07M0pw8Sa4zM
         77Q6ixkjC+pLnkJrvVjBt1QgMfcWXcis0SzRR2CQ1+wr9F4y1QxTLcHQZS0v8xJO6EcS
         XnFhQGoNUc3/K0EGVRYCGALBY/nwkayKIPtbW7wirUn/VE1/kFyvoVrUQW7170Rj+4mi
         wtmhnUYKZ7EkE2sGuGf7sMYvB6B0abaKwF6boD+jjn5VwQoLAdETwfSkMUwIuXlFQbmV
         yR1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Q2+F9A5/nLTkVUXVVlpVLFbHJud5WhlBXGYlZbVnh/E=;
        b=g3gdRn2rCtAjt2R+UmdQzpshljoDTMcfKVixXNT809+CPtIsehz3AmrmS7v5BavDwr
         djApOtzd8zsrZGQGWvR5ewjB5qCcj3KcMhSvtFPj1f5ms6Ck0talfbbPNtXYoxP4LPgE
         n0MlhUVALke2Exnll0vMJZ/79wcAYdiumS4KQU9PzYXoYfUIViIYw0ZiBbNkk/n26aU4
         M2z7Niw0Sg2qJRxffdLYppFo2is/heN9Vq/98F/3xTNwT0b7XfWL0tuKCwW1WiR0wXuB
         xNPF4yHGZf5enxvMFsA43KPqdNehYz9/FF3YjcfPyHSpuNwDS6IOsZZaiXTvba6L9cLn
         ZNDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FcvGu3T3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q2+F9A5/nLTkVUXVVlpVLFbHJud5WhlBXGYlZbVnh/E=;
        b=G1BJkhPkQSS8yUFphauQ/XSvKKFlNS+XTUb5lIT9qDOGaWs8TpJ4YRN11G8mdfvQtw
         yu7fHXt3YBHE4aWx0l15r+/h5Ys8g7dcCiYHE/kuG0esQ6WT9C2tRgSyMXB07O4XCqUl
         v3f6Nw2+Sbpn0/9vH2UzsCVPPNVrr6XACZgQQp6E8ykCZmCUS2SB0I6UKur+78PEPE0p
         GFs2ZnaScrVCBSQMIFU5dZYilQs7vEom0ftZrn6puM62Y8Km8VN+hW5SY+JS6OkZSKod
         OsIXmXQeNZtrr7ZN7zm0+sA7rPL1ogXOod3WtWsJAgSDODDJ/zAl7P4Qwp86A+G0DvTN
         yS1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q2+F9A5/nLTkVUXVVlpVLFbHJud5WhlBXGYlZbVnh/E=;
        b=n/TKg+/Hbk/Fs3jvfIZtdVWHaYtsabQBvxqRid2DmBKMk1CWfrUelVfm90fqPqxRQr
         RIPMpO54XrypxVYEYI9vfT4Brnn/eqyKnLnRfxpVc0WTZtEhOZXOp/ylHawVS1y+SQIZ
         0p+kXCt/0Vpi5OH0wtfjeHQDwNfUXimDoowu8yZyt4WQOLQDqwvYtGYizUZhCPiwU3WA
         V6x8i2ov9udHEAbbKIZ19uvvDGd+VT3Qpgf23KeEO2CLWgIXHEGo+h1/lMVAKg9CwSOe
         JF2iPQA0nXpHVfkJGnUFk1VRgFLGVpcL2zlx8M64MAcSveiT6PxlvQ4TFW3oWVxfKqZJ
         LePQ==
X-Gm-Message-State: AOAM530onqAyBT5OGQx0PWdiVSqTBDnA+Sw5QyKVbms3awEe37UFaNmD
	bFzbjooZ4ar/bdWDx7wUR6I=
X-Google-Smtp-Source: ABdhPJwaRtZWQOAvZ5YrQF38x3HfVAPpJQgxFzDq3Z066dJppgEltC3X2H+AZgasV7gsTmkiwVxdCw==
X-Received: by 2002:a1c:6a08:: with SMTP id f8mr9850183wmc.143.1621617485144;
        Fri, 21 May 2021 10:18:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db50:: with SMTP id f16ls5451979wrj.2.gmail; Fri, 21 May
 2021 10:18:04 -0700 (PDT)
X-Received: by 2002:adf:cd8c:: with SMTP id q12mr10383588wrj.43.1621617484262;
        Fri, 21 May 2021 10:18:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621617484; cv=none;
        d=google.com; s=arc-20160816;
        b=BBsew9yQlMzHzFK8QmHNpDMQb/bLwnxZQDZmQb4HdzgoNDPdbwetKyt83gy/8Ecjxl
         67UYJGgYKm3bm5SXuCgj4c7HtCsr/fKmngjnrUJaLCuR9mHmEUM/jymgwfwXsi/rrrpr
         U6nBiPGKAiI1buGpciOu7mf0tn4B+XV/Lo10h33hA4EX583WG4FqVhUI0UNe9P0c2If2
         wcRELJu9FqGRKc1pf/196JDyK00EO/sV5NEYm8/w28dbPg0yTN1bJl97LEJ2ETiQ45cS
         z0fPVDN9ndvSb2Ayd6DXm9aVdma+YyT2hkwfsgGFEna1cbTxqN8iaVqUUXCeJhvsDImi
         8jlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cfCe3Mmq/4WfJ6JanDJbmMfZ9bv2HspViLWfH/Y54Xs=;
        b=KwDL9LiI1BuFwCYon/mLqysR01N8sc7vIzgUDBSPIcUAFj86+iOetLYFMalzZP7F47
         B/nGoCJoLmVPXqd4br63VI3yh6IQdpxw+R/O/g2DYXtu3TQ6wLRKOMijddMHrBCcKM/x
         IxdETnjCjFBZKafUy4tr+3DI37vCBSaETvEmB8LvngNlLLrIx7mfgEom329pk7Sj22IL
         LyODrzVKOW/veQC1buylACkwM3mx7rttrXJONx8JmVfUDbHJcBlDaAeXKmycZ7/SqrAt
         erZaeu5JoFA8KiLd9FLbY1IEs4BFUjkmS6imaTkWavgz6Qq5rICMIv9N51EPCPXxzAgA
         H8EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FcvGu3T3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id w16si10353wmk.2.2021.05.21.10.18.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 10:18:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id a2so30726999lfc.9
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 10:18:04 -0700 (PDT)
X-Received: by 2002:a05:6512:220c:: with SMTP id h12mr2986001lfu.374.1621617483757;
 Fri, 21 May 2021 10:18:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210520231821.12272-1-maciej.falkowski9@gmail.com> <20210520231821.12272-2-maciej.falkowski9@gmail.com>
In-Reply-To: <20210520231821.12272-2-maciej.falkowski9@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 May 2021 10:17:52 -0700
Message-ID: <CAKwvOd=32_yNvAWRjyczOoEjsWje9SfaB=S1s9kS1bRFZhuU8g@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: clang-tools: Omit printing stack trace when
 KeyboardInterrupt is raised
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FcvGu3T3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, May 20, 2021 at 4:18 PM Maciej Falkowski
<maciej.falkowski9@gmail.com> wrote:
>
> When user terminates the script (also implicitly through for example
> `make clang-analyzer`) by using
> Ctrl+C (or sending SIGINT more generally) the KeyboardInterrupt
> is raised printing stack trace of the execution as shown below:
>
> $ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
> ^CTraceback (most recent call last):
>   File "./scripts/clang-tools/run-clang-tools.py", line 74, in <module>
>     main()
>   File "./scripts/clang-tools/run-clang-tools.py", line 70, in main
>     pool.map(run_analysis, datastore)
>   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 364, in map
>     return self._map_async(func, iterable, mapstar, chunksize).get()
>   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 765, in get
>     self.wait(timeout)
>   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 762, in wait
>     self._event.wait(timeout)
>   File "/usr/lib64/python3.8/threading.py", line 558, in wait
> Process ForkPoolWorker-6:
> Process ForkPoolWorker-1:
> Process ForkPoolWorker-5:
> Process ForkPoolWorker-7:
> Process ForkPoolWorker-2:
> Process ForkPoolWorker-3:
> Process ForkPoolWorker-4:
> Process ForkPoolWorker-8:
>     signaled = self._cond.wait(timeout)
>   File "/usr/lib64/python3.8/threading.py", line 302, in wait
>     waiter.acquire()
> KeyboardInterrupt

With this applied,
$ make LLVM=1 LLVM_IAS=1 -j72 clang-analyzer
^C
Process ForkPoolWorker-5:
make: *** [Makefile:1902: clang-analyzer] Error 130

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the patch!

> The patch handles the raise of the KeyboardInterrupt and exits when occurred
> with code 130 as documented in: https://tldp.org/LDP/abs/html/exitcodes.html
>
> Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
> ---
>  scripts/clang-tools/run-clang-tools.py | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> index 38fc311d2e03..eb0e0ecfce24 100755
> --- a/scripts/clang-tools/run-clang-tools.py
> +++ b/scripts/clang-tools/run-clang-tools.py
> @@ -77,4 +77,7 @@ def main():
>
>
>  if __name__ == "__main__":
> -    main()
> +    try:
> +        main()
> +    except KeyboardInterrupt:
> +        sys.exit(130)
> --
> 2.26.3
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D32_yNvAWRjyczOoEjsWje9SfaB%3DS1s9kS1bRFZhuU8g%40mail.gmail.com.
