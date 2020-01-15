Return-Path: <clang-built-linux+bncBDMLN5HOIYINR3X46ACRUBAEQUH3G@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD4C13C89F
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 17:01:28 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id y125sf1620235wmg.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 08:01:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579104088; cv=pass;
        d=google.com; s=arc-20160816;
        b=gpXAJlSRoOqmcMlUsIqlGlSpw0nzqvHDOfrkLimJa1DdPrl7hUi1XIsr28GF/Nx7Zo
         6cmKBAxSq593TKo442OLOtWFfPjufAUoSNBgyf6zHcrv0dMOfT+qtw3Gij6YXGL0rQT/
         0mFhlyyZD7nq7DP/nKFe+HJlbmSAcdhnZ0vEye9OmqBWF2q5lDve+OVJqrCzpfp0rqG2
         SEEwn6bgiaPcqN0dEzZ3H56ikldATgasws59O0H860Y+kRYDrH+IylglTrYvjTE+Sh1J
         juhYJmue3N5CLQsivh8DOIdfCei+OuGbVt1UgG6HWnPrMSLVa59kIwIW6bSEYHeWg5G0
         FqsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:cms-type
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:to:subject:dkim-filter:sender:dkim-signature;
        bh=2pJpbf3BdfAHiS26EfsztS1fe3sccXaG+6JSa+XSSmc=;
        b=CDCAmMVj74s68Ox7V0wOu5fqUUgHqBiO0p56XCMJU6dfUpggeVB4AJoeG7t7bl9wfG
         Q6l1PRKbLDfSIPNRbcTO+0O6l4GtcavAQu5HEMtEiajNfeFN5R7TIRbS1Ph+rONpMOFq
         miYJraVUnMoVtBqlL1I5xRyc0SfkUDyPHE8nVAILNyVvYpon6IsMsx2E3UVmBJG4bAWl
         twQ+2IO4fyP6eY/GX1xZB8tSG3habgedFSJl1dTj1AiNOcZCqsGkp77r7OkxOTJn5pgd
         SQ7cBYXwG+t2gLVSbktFA37A64c4mz9Pqf8eXsihLz4FPkHCj4UI2HUV9zQqNajdltpV
         5zbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=BRgaQdva;
       spf=pass (google.com: domain of b.zolnierkie@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=b.zolnierkie@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:subject:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:cms-type:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2pJpbf3BdfAHiS26EfsztS1fe3sccXaG+6JSa+XSSmc=;
        b=j+PFgultZxuxs4UkkcncqhpNbqzDET9BlnSqGy/eE3o+H0Vqrqo+ZnpNVB6Sp79Mdk
         jlsd+4K79QUsZ+RrzttptaQ/NhW2KXm4j1z3uoAr7ZlDbon1//GRIxI9ktx+R6Pi0Sy3
         IpBvhLVDnDKRP5RnDLCEcwltei2DQmrXx5+fDw2fHabikU8+0aX/+Hip2A6ZRdGrvveL
         wa7palhToaG+VLuC+nSjJkOMhLUlP3TmnN2A7TK2acrAcEBlLAEb83repDqQp3cyAsAl
         9fSvPpqrHtKpPfGOxhjJ6MxcMUaGoxgdzKL2eTtCEQTo6jSQfBf9tSd0HYDvuWP01NOs
         eHUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:subject:to:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language:cms-type
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2pJpbf3BdfAHiS26EfsztS1fe3sccXaG+6JSa+XSSmc=;
        b=boAHJCrrWuGeFhGhIb/0Gm1EHgs1QUEM+VjIGBD+FyqqWahq2+6rAFGlSRL3Th+l4A
         TJ3lahElZ7gRvqjxSpyaUrDXMWPqAPOxmmEiMr281+Fe/VUh3g2lqtBQi6TPOjERnmif
         u1psl1eICokaMqbuvB9XF8VeWLVZaRSTOrEkd8DtMdbedn86HAp6KUBtgsjxUHoM9fkX
         NOT7cEusrjPvSfTIxSDUoFIUwX05JipIztm+fJ+CfTi4Nan3i0MFbW6xPQTuO6mb9/WV
         AKzedJNMD196maojf36XwvCoxdrVbQsyY9ed7n9/XP5mfEmDt+had4z+BIvz6iwr9pbu
         CvOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9EkhaymeUVbfpVnHj9dCpU6fpOAh4zoi15+9yTli1/w7iO5tO
	E82t4FpsILUHfjYX9ZkHODw=
X-Google-Smtp-Source: APXvYqzhnJoBVGtzwiBE6dKPgCrC9OW9k9qWM/iyi7StWbrgx9EE58l9PwId13BLgkLWGyepNG2Tug==
X-Received: by 2002:a7b:c1d8:: with SMTP id a24mr543619wmj.130.1579104088191;
        Wed, 15 Jan 2020 08:01:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:55cd:: with SMTP id i13ls6978339wrw.0.gmail; Wed, 15 Jan
 2020 08:01:27 -0800 (PST)
X-Received: by 2002:adf:f3cd:: with SMTP id g13mr31801564wrp.54.1579104087573;
        Wed, 15 Jan 2020 08:01:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579104087; cv=none;
        d=google.com; s=arc-20160816;
        b=rnZqJXxXe1hvtJYDdDQInF+do+gAcfGoLFKjCRFq0mVB0ssyuReqqCwK4AT+nh4bzC
         gY3YHvCMjO0CDIt1dSzicksStTn58sUYAX0MDhzqlKlsFX2FBWb9/mWP9pQx1uzlDr4k
         8I5wWEKUzO7FAwAdfSxnfhbGRzbi3LatGxKx17xJicNPASfGHiuo50Fpsgsf+0Ly6xJz
         sJ75ILVrcB571QICIZ7UfWxlJVDrsEkseRNZ0y4LhoANVLsQNnZuYjlb9tQcEI6QnLzI
         80kG0Ipvhg4EBXViTBIjCrE4Akm2D6QnhLIOvN3vRZ3I2WkMySDU1Bgcfzvqow5JhiVK
         Vy0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:cms-type:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:cc:to
         :subject:dkim-signature:dkim-filter;
        bh=LqMP39u9c1982REyH6fNGdAAnlEOofc2tfTRpoSDHWA=;
        b=kZ7PV3Wtnzd8dKBpVYO41aGtLMNbEDtFW+3peVI+Sm7xlxoS+DuIVeh0O2E309UAtu
         kn/2xFvET6jhKza3yY0eX22kCVSxW3xm+VWRGcdVA+zXm5mA8gm2LELGaf2+qW3Scv6N
         LL9E0476QkIUwzM9/kAJTmGspldW5VOX7VEKxJeLCeTJW9s5Z+tkbfgd7tQGNjurY+J7
         7TYNze+3TbtRsGI+pelzKltMoUwMitGLrf8TA6VvDrTe0zk6bbMzrDj6mrOWM/ZYipgi
         jgPATkrkp169mEARVNZlqrZ7y1XWFzpkKqlY7xrvzOYzqAfI0CIVg9xR9Z+CcqC4F9Dj
         fhXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=BRgaQdva;
       spf=pass (google.com: domain of b.zolnierkie@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=b.zolnierkie@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com. [210.118.77.12])
        by gmr-mx.google.com with ESMTPS id p23si16382wma.1.2020.01.15.08.01.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 08:01:27 -0800 (PST)
Received-SPF: pass (google.com: domain of b.zolnierkie@samsung.com designates 210.118.77.12 as permitted sender) client-ip=210.118.77.12;
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20200115160127euoutp023ade25b276a497f03194f0a1351808e5~qGs0IPabO2956829568euoutp024
	for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 16:01:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20200115160127euoutp023ade25b276a497f03194f0a1351808e5~qGs0IPabO2956829568euoutp024
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20200115160127eucas1p2da69eea1bdde808be14ebe99db0111de~qGsz-vfU62731027310eucas1p2g;
	Wed, 15 Jan 2020 16:01:27 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges3new.samsung.com (EUCPMTA) with SMTP id AF.27.60698.6573F1E5; Wed, 15
	Jan 2020 16:01:27 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20200115160126eucas1p18cf10b6029eefc5464d9fb4e1402e219~qGszqSGKW0915909159eucas1p12;
	Wed, 15 Jan 2020 16:01:26 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
	eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20200115160126eusmtrp1f25b31f47ce3d2e8c881aa3d2044831a~qGszppu7t0554305543eusmtrp1T;
	Wed, 15 Jan 2020 16:01:26 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-33-5e1f3756ad41
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms2.samsung.com (EUCPMTA) with SMTP id 87.E2.07950.6573F1E5; Wed, 15
	Jan 2020 16:01:26 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20200115160126eusmtip16084449c437b257f15551ad3a1c788de~qGszIG3ad1149711497eusmtip1Z;
	Wed, 15 Jan 2020 16:01:26 +0000 (GMT)
Subject: Re: [PATCH] fbmem: Adjust indentation in fb_prepare_logo and
 fb_blank
To: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor
	<natechancellor@gmail.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
	linux-fbdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <b6d5a48e-f1e5-4c51-bf48-a08f1e5e7388@samsung.com>
Date: Wed, 15 Jan 2020 17:01:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdk0hz-Eu00yRwRT6MFDmxPWdgnuYZWxGxASicCq68NivQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKKsWRmVeSWpSXmKPExsWy7djP87rh5vJxBhd2Mlo8eDObzeLK1/ds
	Fif6PrBaXN41h83iw9sSiw8T/jM5sHnsnHWX3WPBplKPPRNPsnnc7z7O5PF5k1wAaxSXTUpq
	TmZZapG+XQJXRm9PL1PBRpWKnXPOMjUwPpfsYuTkkBAwkWi5sZmxi5GLQ0hgBaPE+qN9rBDO
	F0aJC90T2CCcz4wSJ3tXssG0TP1wHqpqOaPEpjP9UM5bRonvc/rZQaqEBQIkupu2MoPYIgJx
	EncP3QBbwiywllFi2+J9LCAJNgEriYntqxhBbF4BO4lXLT9YQWwWAVWJFVsfgdWICkRIfHpw
	mBWiRlDi5MwnYHFOgUCJaf2NYMuYBcQlbj2ZzwRhy0tsfzuHGWSZhMA6domXxy+xQ9ztIjH3
	xjNGCFtY4tXxLVBxGYnTk3tYoBoYJf52vIDq3s4osXzyP6ivrSXunPsFZHMArdCUWL9LH8SU
	EHCUOPRDFMLkk7jxVhDiBj6JSdumM0OEeSU62oQgZqhJbFi2gQ1ma9fOlcwTGJVmIflsFpJv
	ZiH5ZhbC2gWMLKsYxVNLi3PTU4uN81LL9YoTc4tL89L1kvNzNzECE8/pf8e/7mDc9yfpEKMA
	B6MSD2/GH7k4IdbEsuLK3EOMEhzMSiK8J2fIxgnxpiRWVqUW5ccXleakFh9ilOZgURLnNV70
	MlZIID2xJDU7NbUgtQgmy8TBKdXAuN6yNHHyp0cS0o2nL7mJn/o0O+p2rsJOxyrx+L0Bd4M5
	Hxz4Ft/A1WfOk2P40dXLXfTXk79m795Fm0k6d05ssNaR55KQt+zzsjy2r2puyouznWxLM6f5
	/tylerj2bQqHqVXOtIPKzysLJZ6sFYvU+O07/Y8ny97g3U9c0jUSpW6V/5ukdfCmEktxRqKh
	FnNRcSIAgm/o9zgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGIsWRmVeSWpSXmKPExsVy+t/xu7ph5vJxBp2rtS0evJnNZnHl63s2
	ixN9H1gtLu+aw2bx4W2JxYcJ/5kc2Dx2zrrL7rFgU6nHnokn2Tzudx9n8vi8SS6ANUrPpii/
	tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEvo7enl6lgo0rF
	zjlnmRoYn0t2MXJySAiYSEz9cJ61i5GLQ0hgKaPEm/P9TF2MHEAJGYnj68sgaoQl/lzrYoOo
	ec0o8eBOBxNIQljAT+Jj810wW0QgTuLN0ZssIEXMAmsZJebv6mcESQgJ3GCU6NpYC2KzCVhJ
	TGxfBRbnFbCTeNXygxXEZhFQlVix9RELiC0qECFxeMcsqBpBiZMzn4DFOQUCJab1N7KD2MwC
	6hJ/5l1ihrDFJW49mc8EYctLbH87h3kCo9AsJO2zkLTMQtIyC0nLAkaWVYwiqaXFuem5xUZ6
	xYm5xaV56XrJ+bmbGIFxtu3Yzy07GLveBR9iFOBgVOLhPfBPLk6INbGsuDL3EKMEB7OSCO/J
	GbJxQrwpiZVVqUX58UWlOanFhxhNgZ6byCwlmpwPTAF5JfGGpobmFpaG5sbmxmYWSuK8HQIH
	Y4QE0hNLUrNTUwtSi2D6mDg4pRoYp0xNY/b9x/rKK7zw2KXm1j6Xq8V/F2ya/vbpsWNynh7x
	+xcHL5PgCqlbUet6b+fzY7te5K362KbH5snhptjD9sxVce/yY3sr3qvriJeeXf7h6gtnNdc9
	C6uvzooQZvi/2c9ojXnfA62TgV0Xr37e7y/Zyq/Tt4H9AHt3r51NRfP8ukeCNnfeKbEUZyQa
	ajEXFScCAJiSiNvJAgAA
X-CMS-MailID: 20200115160126eucas1p18cf10b6029eefc5464d9fb4e1402e219
X-Msg-Generator: CA
Content-Type: text/plain; charset="UTF-8"
X-RootMTR: 20191220180959eucas1p134233cbd0a32573e8bc7460d5ddd5906
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191220180959eucas1p134233cbd0a32573e8bc7460d5ddd5906
References: <20191218030025.10064-1-natechancellor@gmail.com>
	<CGME20191220180959eucas1p134233cbd0a32573e8bc7460d5ddd5906@eucas1p1.samsung.com>
	<CAKwvOdk0hz-Eu00yRwRT6MFDmxPWdgnuYZWxGxASicCq68NivQ@mail.gmail.com>
X-Original-Sender: b.zolnierkie@samsung.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@samsung.com header.s=mail20170921 header.b=BRgaQdva;       spf=pass
 (google.com: domain of b.zolnierkie@samsung.com designates 210.118.77.12 as
 permitted sender) smtp.mailfrom=b.zolnierkie@samsung.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=samsung.com
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


On 12/20/19 7:09 PM, Nick Desaulniers wrote:
> On Tue, Dec 17, 2019 at 7:00 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
>>
>> Clang warns:
>>
>> ../drivers/video/fbdev/core/fbmem.c:665:3: warning: misleading
>> indentation; statement is not part of the previous 'else'
>> [-Wmisleading-indentation]
>>         if (fb_logo.depth > 4 && depth > 4) {
>>         ^
>> ../drivers/video/fbdev/core/fbmem.c:661:2: note: previous statement is
>> here
>>         else
>>         ^
>> ../drivers/video/fbdev/core/fbmem.c:1075:3: warning: misleading
>> indentation; statement is not part of the previous 'if'
>> [-Wmisleading-indentation]
>>         return ret;
>>         ^
>> ../drivers/video/fbdev/core/fbmem.c:1072:2: note: previous statement is
>> here
>>         if (!ret)
>>         ^
>> 2 warnings generated.
>>
>> This warning occurs because there are spaces before the tabs on these
>> lines. Normalize the indentation in these functions so that it is
>> consistent with the Linux kernel coding style and clang no longer warns.
>>
>> Fixes: 1692b37c99d5 ("fbdev: Fix logo if logo depth is less than framebuffer depth")
>> Link: https://protect2.fireeye.com/url?k=6092966e-3d083fcd-60931d21-002590f5b904-0ba0d782b5b6272b&u=https://github.com/ClangBuiltLinux/linux/issues/825
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Thanks for the patch!
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Patch queued for v5.6, thanks.
 
Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

>> ---
>>  drivers/video/fbdev/core/fbmem.c | 36 ++++++++++++++++----------------
>>  1 file changed, 18 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
>> index 0662b61fdb50..bf63cc0e6b65 100644
>> --- a/drivers/video/fbdev/core/fbmem.c
>> +++ b/drivers/video/fbdev/core/fbmem.c
>> @@ -662,20 +662,20 @@ int fb_prepare_logo(struct fb_info *info, int rotate)
>>                 fb_logo.depth = 1;
>>
>>
>> -       if (fb_logo.depth > 4 && depth > 4) {
>> -               switch (info->fix.visual) {
>> -               case FB_VISUAL_TRUECOLOR:
>> -                       fb_logo.needs_truepalette = 1;
>> -                       break;
>> -               case FB_VISUAL_DIRECTCOLOR:
>> -                       fb_logo.needs_directpalette = 1;
>> -                       fb_logo.needs_cmapreset = 1;
>> -                       break;
>> -               case FB_VISUAL_PSEUDOCOLOR:
>> -                       fb_logo.needs_cmapreset = 1;
>> -                       break;
>> -               }
>> -       }
>> +       if (fb_logo.depth > 4 && depth > 4) {
>> +               switch (info->fix.visual) {
>> +               case FB_VISUAL_TRUECOLOR:
>> +                       fb_logo.needs_truepalette = 1;
>> +                       break;
>> +               case FB_VISUAL_DIRECTCOLOR:
>> +                       fb_logo.needs_directpalette = 1;
>> +                       fb_logo.needs_cmapreset = 1;
>> +                       break;
>> +               case FB_VISUAL_PSEUDOCOLOR:
>> +                       fb_logo.needs_cmapreset = 1;
>> +                       break;
>> +               }
>> +       }
>>
>>         height = fb_logo.logo->height;
>>         if (fb_center_logo)
>> @@ -1060,19 +1060,19 @@ fb_blank(struct fb_info *info, int blank)
>>         struct fb_event event;
>>         int ret = -EINVAL;
>>
>> -       if (blank > FB_BLANK_POWERDOWN)
>> -               blank = FB_BLANK_POWERDOWN;
>> +       if (blank > FB_BLANK_POWERDOWN)
>> +               blank = FB_BLANK_POWERDOWN;
>>
>>         event.info = info;
>>         event.data = &blank;
>>
>>         if (info->fbops->fb_blank)
>> -               ret = info->fbops->fb_blank(blank, info);
>> +               ret = info->fbops->fb_blank(blank, info);
>>
>>         if (!ret)
>>                 fb_notifier_call_chain(FB_EVENT_BLANK, &event);
>>
>> -       return ret;
>> +       return ret;
>>  }
>>  EXPORT_SYMBOL(fb_blank);
>>
>> --
>> 2.24.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://protect2.fireeye.com/url?k=d7e70d81-8a7da422-d7e686ce-002590f5b904-15caafb1f7cc41ea&u=https://groups.google.com/d/msgid/clang-built-linux/20191218030025.10064-1-natechancellor%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b6d5a48e-f1e5-4c51-bf48-a08f1e5e7388%40samsung.com.
