Return-Path: <clang-built-linux+bncBDPZFQ463EFRBY4TUPUQKGQEZRR55YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D97674C3
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 19:56:51 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id b1sf4640158wru.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 10:56:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562954211; cv=pass;
        d=google.com; s=arc-20160816;
        b=WRTtKJcDYEGiJhHtQfXLolf3L7adNLoD+Rv2AVoETKAFq8oumYDFbTlS1rMatAG5WZ
         krjjUnwVGDw8bUUtutIEpeKxzG8UqR2dfe5V4u53QlhgkxFBPPBUU4weBefGppEYK1yD
         u9Sr7QFMBnp/Q716V9BvvQ0cpdeDaaLoqq6CzMBFRMeSp8zys01Nj+Qz1sP5MF62sJgu
         tKVtaR74FoLXGpV2jTZRLsvVsT5TcgiRtFn/8NSEMWcyTBuxhKW1A7OoVD6qCx0QwzCt
         E+LNKbj6ISIUhkTe5RahIZ9It+Bg0NcBYvCjC0Ri7PnFASjygX8LxOXY5otD7/ojkBJI
         +R8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1hhK8uhuTrS1XUxW+ZF2QR7wOFCOkfXteem2RJ8f/EE=;
        b=xVUcuo2AagRuMU1ylfXeHWNlWxP3RIxLf0SPBW8qTJF2Q3oa614RfHmkjkOQXcibvc
         +c5JUJnVN4waBRqrAuAxtaMp/ULScCoDC78UQqigzUI6hDlEkfSieRUvynv5P40qS5P3
         df6KvJf/oH/WVyLWMn3sZVXgc3K+hXgwzQcB9ainKcDBE9+DWaissFWQQgZQ9m5c3Itd
         lHQK+YG3xivo1zmmK0+VUFFszEH/zb3UAU7PHZN6cF1EIAFI8Fs9QEwGHKzyPZrEUixh
         1GlP+mwtybRxUriVTpcBwibcb/P1/0rr+/RRytmLUZe55av0XRWVYXIVCn14PP4gCvLk
         ocKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dx2+eI7n;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1hhK8uhuTrS1XUxW+ZF2QR7wOFCOkfXteem2RJ8f/EE=;
        b=dao8oA2B9i9DWUyBgTqct/3z6N1WM3eEhnNx2IchS9applQltyGYLR0wXe/KAaBqSx
         nWyzRP3CwVejazILhOHQU3HFD7pSbPmq+hHV/C8u6Jg5/PqrIoTUahNfhniKaEZZTv+H
         Six82D6y37YMBooOdzD00OujAhIlK5G7SJ1DLNgdk87a8s9w3PV+Fb9SJ/QVV85Z0oyY
         TwFqWnQ4vcotvl2a5U4CybSdhm0cv3C7+3qOX7w0KVAgq9Ot2RJ+pPgW5zGjesPAX51H
         0Z0sK8F/2KkOhghcfNEIdQoHFwgnetfdp3PbvL9f+4louncnWNc80/pTUNDMJzJQOCOM
         NJoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1hhK8uhuTrS1XUxW+ZF2QR7wOFCOkfXteem2RJ8f/EE=;
        b=jZrb2KiJysirFeXdYxYu8yicm8GcTZJ2C0uNUlZb+OJDeyMdgnxkam5tl3Kmy7UOeK
         jdVI8V11APf9xQ8Mk5n9NUxX6+9welQFSdxMlfQYRZSEscO3806U3PJgWXrENDgdm1a+
         6Q3s4tJjz3399e4325TaMUI9EoHtt1P/VFDQS2Osxm4iyA14D3GJ0yjtuL5qazlib0Pe
         0snBJQoSpYqZf8dJ46ufMrQmNoHWnKwCciXG6lu9X3bfquNOlp9CPiH4Ad/UzZguaBTu
         0H6+ijyKIm1VQC/XiXFPsSFOGS2RPMwmtJH9XqNHlzznc+fji+jJJbM7vFroWhm3qrIx
         dp6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1hhK8uhuTrS1XUxW+ZF2QR7wOFCOkfXteem2RJ8f/EE=;
        b=NLuAoe0kJG6xtSvf5cXQKgSo6TJXf17AOMLnrV9u4A4Aqvt9o4P78wpFT1bF8PBNJL
         xVlgoiuu3gVCCjz3b0WzF+pMHlJzZWtAa1cQDzxNp9MKa+veXrQJaGHP6x5f/jGMFrjE
         JTlqn3HJ1CSF2MJsYAj2U3yl0IMwpkNd6pmoKUIAv6VQf07+z6RQMSpEqf3LhVw4h1Mi
         nEYWed5gbRw1WhCC1N0HhlpWpWDyomkYw3dgDskG/WuUAf0vYRX+lAq4lyY7TJ2MgDNo
         FyIO1qLB2kzD14eh+trKowdUYbrfHDDAkAiee0BVszunreonY81+G9/wAu1XTcsKtgwj
         FaEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWHwOMVAT+9oUl6BAyqcp/LsdE44ALl6cC5WSNZo+nigx07qxet
	DQRG6lCuVx1crHAqOHB8T9s=
X-Google-Smtp-Source: APXvYqxmOiAmE91pGwQvcQ9r3XDw70JQIJ0sIH1i42xgAbAs6QDQ3iiQuAgmdUwW5yt0gBuKU4MhFA==
X-Received: by 2002:a5d:670b:: with SMTP id o11mr12876094wru.311.1562954211376;
        Fri, 12 Jul 2019 10:56:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:97de:: with SMTP id t30ls897667wrb.11.gmail; Fri, 12 Jul
 2019 10:56:50 -0700 (PDT)
X-Received: by 2002:a5d:4041:: with SMTP id w1mr345997wrp.199.1562954210858;
        Fri, 12 Jul 2019 10:56:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562954210; cv=none;
        d=google.com; s=arc-20160816;
        b=ZHs478zvKJjvxIBu3MzXvznxYV+PNoIY+qOxas6KxgKxj78zqTxra7T2OGeLLvg6kk
         GBAIqwzBiS1Ma3G1tZn7VaEP+tbiCWf0aNHuzA9DYsNhp/2vj8IXu327dxtKFfzilDWW
         SBRHwKcxGr1inOg+DT/vIEf8ez9BiRm3M1wfeT0IvQcIldakJ2nNtLMPk0CXnSp8QSWM
         AEkNVvmfWU13KznYQ4gK5vIabY2+yqBLsRgtFJhXqt1y4+PzGkZo9nJLo2XiE7t1Sb1L
         iGdBPYRuw5xtXIvE0V+NXzXQWNdc7VeR/BSdovK0ouyuYgraQHSLkCjELW/w3k1Cr02B
         AP5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DJSixh5eUA7ZuYLo3zM8xEkgRu/s1ZTrnfSXH7ypmHc=;
        b=f9gx4MpL8c0ORUE3RHW4MhAu2UFRGtC35vq3Cgk+hc6hn63j+JybIBnBvKZ6FfR3il
         AGuFDaoqYGiyU8nz8zy7A3z36pL952VWdtoZS6hOVqjONItPsptIYMrobL3zIUfyq0R4
         x+eR99zu3zoTdS7S6h8rh3HiDb1my7ap0AVfvoXOQ8GCguqzf9D6kQpqRgWzv46yqNVm
         riraQpXjv3PkTySVxTG3BjuL+l+bqZ4asRppqO/blP9Cm6inUgbKtVQZzBP+Bf6Msvup
         R/AzwGVMNp+pNqb4YPpFNezk90mB6QhfgAJKj4HoGnTm0cb9S7R6wSswMwekA8Zwb8bn
         2fBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dx2+eI7n;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id j18si392812wmk.0.2019.07.12.10.56.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 10:56:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id s15so9708293wmj.3
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 10:56:50 -0700 (PDT)
X-Received: by 2002:a1c:a1c5:: with SMTP id k188mr10769220wme.102.1562954210408;
 Fri, 12 Jul 2019 10:56:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190712094009.1535662-1-arnd@arndb.de>
In-Reply-To: <20190712094009.1535662-1-arnd@arndb.de>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 12 Jul 2019 13:56:39 -0400
Message-ID: <CADnq5_O-LJHnHg_yw0jVxy9yT8ZqNq4s-U_surFXTcL=fPA21Q@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: return 'NULL' instead of 'false' from dcn20_acquire_idle_pipe_for_layer
To: Arnd Bergmann <arnd@arndb.de>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Charlene Liu <charlene.liu@amd.com>, LKML <linux-kernel@vger.kernel.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, Nikola Cornij <nikola.cornij@amd.com>, 
	clang-built-linux@googlegroups.com, 
	Dmytro Laktyushkin <Dmytro.Laktyushkin@amd.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, Jun Lei <Jun.Lei@amd.com>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Dx2+eI7n;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::341
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
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

On Fri, Jul 12, 2019 at 5:40 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> clang complains that 'false' is a not a pointer:
>
> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:2428:10: error: expression which evaluates to zero treated as a null pointer constant of type 'struct pipe_ctx *' [-Werror,-Wnon-literal-null-conversion]
>                 return false;
>
> Changing it to 'NULL' looks like the right thing that will shut up
> the warning and make it easier to read, while not changing behavior.
>
> Fixes: 7ed4e6352c16 ("drm/amd/display: Add DCN2 HW Sequencer and Resource")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied.  Thanks!

Alex

> ---
>  drivers/gpu/drm/amd/display/dc/dcn20/dcn20_resource.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn20/dcn20_resource.c b/drivers/gpu/drm/amd/display/dc/dcn20/dcn20_resource.c
> index 70ac8a95d2db..66aa414ad38f 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn20/dcn20_resource.c
> +++ b/drivers/gpu/drm/amd/display/dc/dcn20/dcn20_resource.c
> @@ -2425,7 +2425,7 @@ struct pipe_ctx *dcn20_acquire_idle_pipe_for_layer(
>                 ASSERT(0);
>
>         if (!idle_pipe)
> -               return false;
> +               return NULL;
>
>         idle_pipe->stream = head_pipe->stream;
>         idle_pipe->stream_res.tg = head_pipe->stream_res.tg;
> --
> 2.20.0
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_O-LJHnHg_yw0jVxy9yT8ZqNq4s-U_surFXTcL%3DfPA21Q%40mail.gmail.com.
