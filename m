Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4W647VQKGQEYCZ6QDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB17B094B
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 09:10:42 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id l6sf11592662wrn.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 00:10:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568272242; cv=pass;
        d=google.com; s=arc-20160816;
        b=loq3Wzt+M7xN6bvvC3XE9QrLRvyZ9avIsUbRbK6LELGy728kxOEL4bzbYQjrs2RqVM
         hRs4cIM2ian7EoP3HFRzzMDlor4ML2UHBPpwZZ8fL/q8f4tUmxRfzexGORvwLEYSrA7c
         7dghWuQAyEmLDwj7DuZiLqnZ3QZILkQozO8KqT8EGeEq7NzMPA5h4UZghTlvEo4TWSQG
         p57QVUsvAqnFhlOC7RXFIBSsctKZfIbVBUJh3tm9hFP+z6N5gg1i3aPxjRkThq+eoKHa
         Hok11kqwvqT6mD2I92E2t570KTu4l0RwDKhKdRM3iXGJFov0EmTPKTMgQcvPRZ56DdYO
         eoPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=v9hBg3zHq0peJ3coJDWLojhLnN9xDXmygP143tgB644=;
        b=H3FjOvOoC92hLZ19wdsAWtcfGTaSsDFwg7693lm50zu5eP1K+yqGJIFSB0BShnzOWA
         0T6oCdWjYqTDe0wOKNgHsZtUKdH2BjnfsTgFm0WwNXCIUKV29J5AsNJPAE4YVwomor65
         ZiGqMWz/Wl6H0GGMk3lLlJ8uY0IXUi6WeOlvDULWnoA4vynDlasA3kWFLw4BXhv52t7I
         iO85EiP5U84ej2POrE2bVDWpL+XFPbN4zkAQ4le+7SEchdAhbc6n9XQHRI3kJaGyR2sD
         06xfLmKDeBIzAgNoujDoHqITi2r8NO5Q2veSZ77R7Ov54QOalSawYLvLLd2Gev/SZEZp
         /qjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tYZD//T3";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v9hBg3zHq0peJ3coJDWLojhLnN9xDXmygP143tgB644=;
        b=leJuPe4rST6vA85Kkw+CgwqwZ2yKMeT5EFq4LaWkuHRLrSBkv1+a+iYaBtbq0lV0ZE
         LSugCntZO9afxOllD8MVrD0OSscFV1YBv25UtVcTp91h5SOi9i70G6wqYlAqL3WaH2HU
         n27SOOoLV1Eg3LnnLv+gWlD6nUgOVx1prbH9LNRUh5a9SU6Gfx0TfzNEr/7u5u05hthO
         Lm8Oy7ZM6BcSfhl+ItavtsrJ4mL45oNtdXfKevgt6d8sEHU7gFUvwvbwX1Eu4vQ7gzBE
         NbT3+psFQK4oyidxAuCVyGKb00QHGyQ+kKWnK9wj+wrx3l/4iQqfZdvL04QzhiVFDvJ6
         Gkug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v9hBg3zHq0peJ3coJDWLojhLnN9xDXmygP143tgB644=;
        b=hVweSR7zVMjR0KGnZgbdq8I4y+WRyZTnPnAaZ37ihtn8/lteuN0bPh0oK8zvNDk8IC
         +/TtKeCJtyz6toyJHGxfgJgtKlGStii+iUsLST0zHJEq3VnOMtOgtyoLntjrXnCfIQtH
         daKvrMd7l2EMONYJis9ath4ICW1X8xU9zG2oF2MMbh3ZUCYLHVss45XsYpcJNFh79dCH
         +3TWOtQ1xDQM1AxhXPW/dJqXdKUjl+E0qgVLHpsdW8riq4Oa8i+wvcanuYPzy4tQnMgL
         hWKfXCrZTcj7k9Gg6NtAiI9+Meb+BbiaN9f97FhcAfH+9sS1LKtTrbqusUmt316Wa5PD
         2HgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v9hBg3zHq0peJ3coJDWLojhLnN9xDXmygP143tgB644=;
        b=MgXY7LK9y7a1xTwObvmasR9LxMqvGCsjQNyWSWpHVlUxuXbjs8Bbd1clx+3jtNkjMJ
         G0xC4IM6kIpw17vwkyMD1YonNXrX+31iwNeOJCAKQNm2bSsgGZ3wM3SCz+57G+WKjTUc
         rmvRUtIFYhsP6uGJ7Oz6F2LUQs+EWD0Wj5Z0O7pn+k9+BIVwH/jizc3P8ovbmApe4Dp8
         GdslRu+30VlxGvO16Xzq5cAQVkbxEA0TsnLQDliPpM5iNGSn3GcTziRYKPRYmkvOl63X
         FVXzkty8aX8aVFkVJrVaan3gLzQobIPKbFHkoYMXdnibA8DmjrMqzMpJMSiDD96/FZTO
         ig0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUXUdDSSErz4JmkwXqvhPtmpgF33rorxzsGWVaKlI/kCko3Rt5D
	bePNhibh5sqSQUGYmbal5KM=
X-Google-Smtp-Source: APXvYqyDy6+O8YqFUDsy75mVrYufBfxdFmlo4wsqYmLpmf0KN9pM+Yh3QAQQ78AH6JgUVICAzz5VFw==
X-Received: by 2002:a5d:4d81:: with SMTP id b1mr35762560wru.27.1568272242371;
        Thu, 12 Sep 2019 00:10:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c3da:: with SMTP id t26ls2176088wmj.2.gmail; Thu, 12 Sep
 2019 00:10:41 -0700 (PDT)
X-Received: by 2002:a05:600c:224a:: with SMTP id a10mr7158280wmm.176.1568272241973;
        Thu, 12 Sep 2019 00:10:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568272241; cv=none;
        d=google.com; s=arc-20160816;
        b=USLBlWzAdPdNCSmhCQZrYMzZmE+pqIRELB9b3pc8n2152Of2NHV4o/UaCvL53dynT9
         SdeEeshNMauYODpeACP7/3osBsw1fqZmRXX6pEgHkNyR+1FOR3DbW3tWqozS3aE9SnER
         +rygQjufs1YBl1TNFfHmOLY04EXwvla1URNzLVUTqvpQ/Wov1++WmaVgXvI90kaTn6pi
         17cVSF+i1RshXtzyzLw2qRweGgrDGfSaMtLZSre9CZjCLa/iiU3UBNpbf+nSeCDSmSxG
         z+rXnUYMueLzJLUvIdvwyPcQREarxGXPFJvKBPkEr3ODOivv6xG4ks7rNItDw/IXzVUy
         rQEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fCuxm38nzoT27EL3dIgrqj9qDH3Bp6rZXrVGq32NPGc=;
        b=fxUfTxJRGlSNW98vNWUXcdqGuFsMa2AgVDo6rbf/UCPxltWPtiJ8r74ds/RrlClOhq
         SKg4e2fDaSmy2d1X9hYM/52n85dl7ekDDVKQ56p2ncmkVWTOcbrR3kctPsiCqC0foLDO
         LVscVmTqpfjiQS0mrAOINIxc3z3tYIhO0Pr7dDta6g0t8UtsIzLuQzuGQ7PbXYkxrS14
         PeEBayMkwXJieSEPm5akR8totbceYm/U9HJLpJM4CcI8MFRxs8UUxsNaFie1/hwEty+N
         D2pR2ni5UZtJswoOlxbFSSZB82do7+kOJZEIBDPW3hXcQTFOADWlhvOpdZj+lMPFbB20
         a5nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tYZD//T3";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a198si56034wma.4.2019.09.12.00.10.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2019 00:10:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id l16so27099959wrv.12
        for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 00:10:41 -0700 (PDT)
X-Received: by 2002:adf:ed44:: with SMTP id u4mr4141698wro.185.1568272241476;
        Thu, 12 Sep 2019 00:10:41 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c3sm33892901wrh.55.2019.09.12.00.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2019 00:10:40 -0700 (PDT)
Date: Thu, 12 Sep 2019 00:10:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [andersson-kernel:wip/srini-v5.2-release-audio 78/173]
 sound/soc/codecs/wcd934x.c:1265:11: warning: address of array 'wcd->rx_chs'
 will always evaluate to 'true'
Message-ID: <20190912071039.GA23580@archlinux-threadripper>
References: <201909121550.LkITMdqZ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909121550.LkITMdqZ%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="tYZD//T3";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Sep 12, 2019 at 03:04:52PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> 
> tree:   https://github.com/andersson/kernel wip/srini-v5.2-release-audio
> head:   6a91c6d6034fa45b4224bb344d11391ea37c6855
> commit: 8b7be3b4ea063019993d2dc0228b916f0cdac154 [78/173] ASoC: wcd934x: add support to wcd9340/wcd9341 codec
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 8b7be3b4ea063019993d2dc0228b916f0cdac154
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> sound/soc/codecs/wcd934x.c:1265:11: warning: address of array 'wcd->rx_chs' will always evaluate to 'true' [-Wpointer-bool-conversion]
>            if (wcd->rx_chs) {
>            ~~  ~~~~~^~~~~~
> >> sound/soc/codecs/wcd934x.c:1273:11: warning: address of array 'wcd->tx_chs' will always evaluate to 'true' [-Wpointer-bool-conversion]
>            if (wcd->tx_chs) {
>            ~~  ~~~~~^~~~~~
>    2 warnings generated.
> 
> vim +1265 sound/soc/codecs/wcd934x.c
> 
>   1249	
>   1250	static int wcd934x_set_channel_map(struct snd_soc_dai *dai,
>   1251					   unsigned int tx_num, unsigned int *tx_slot,
>   1252					   unsigned int rx_num, unsigned int *rx_slot)
>   1253	{
>   1254		struct wcd934x_codec *wcd;
>   1255		int i;
>   1256	
>   1257		wcd = snd_soc_component_get_drvdata(dai->component);
>   1258	
>   1259		if (!tx_slot || !rx_slot) {
>   1260			dev_err(wcd->dev, "Invalid tx_slot=%p, rx_slot=%p\n",
>   1261				tx_slot, rx_slot);
>   1262			return -EINVAL;
>   1263		}
>   1264	
> > 1265		if (wcd->rx_chs) {
>   1266			wcd->num_rx_port = rx_num;
>   1267			for (i = 0; i < rx_num; i++) {
>   1268				wcd->rx_chs[i].ch_num = rx_slot[i];
>   1269				INIT_LIST_HEAD(&wcd->rx_chs[i].list);
>   1270			}
>   1271		}
>   1272	
> > 1273		if (wcd->tx_chs) {
>   1274			wcd->num_tx_port = tx_num;
>   1275			for (i = 0; i < tx_num; i++) {
>   1276				wcd->tx_chs[i].ch_num = tx_slot[i];
>   1277				INIT_LIST_HEAD(&wcd->tx_chs[i].list);
>   1278			}
>   1279		}
>   1280	
>   1281		return 0;
>   1282	}
>   1283	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Hi Srinivas,

The 0day team has been doing clang builds for us to help catch warnings
early and this one cropped up. These checks should be unnecessary, see
the wcd9335 commit d22b4117538d ("ASoC: wcd9335: remove some unnecessary
NULL checks") upstream.

Please look into this when you have time, cheers!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190912071039.GA23580%40archlinux-threadripper.
