Return-Path: <clang-built-linux+bncBAABB2MZVX7QKGQEZNOIW4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A4F2E71DA
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 16:36:11 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id f190sf8766153oib.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 07:36:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609256170; cv=pass;
        d=google.com; s=arc-20160816;
        b=n5P29/O+KA/B947MYm5PdeYC7VX7LNCCdkq8m3tBwRAp92aedQ/ZWZF4/RWZVrojY2
         ToQjIaxqtfHRRQomSLhER7fxesKIfFpv4EQhZTlkqQv/PLpncPKNWBzHWDueBbQZAYkS
         Zz080cMZa3aCmw4YHKXyY8p8n2Gi6okQTG5CJ6xPqk3SQ/Gh41kppj2YZX4hsIzle1vv
         9xUIzuLy8Az6bpAlN3bbNQMM/YoyBPdFqZYOOhg8rpfhMo3vqHP/M9j4zt0+SeW8X2i0
         Rc8vCBWevdGevpmz3/tiz+fZHiVGK0cWcVO3GCJ6b3dcN1TH3woWcn0GGb5tuZk1F68o
         GPGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=elqzhYLKbaS8ZKsu3KtjKr4pPMjgYbCwof7LL4IypLg=;
        b=iQG1WQ2jkc6Nyk0tRvY77m+rEuhCXxgQgkAGFxViuzkr69cnl+Gi1V/KP2u8m6ozsm
         j+4FmofkI92xXgRgpFC34liVs3X3ZKpn2mfLPaPiVx24nWKTRwKuSGTg0Yl/BeKXmBI0
         jI5NSIoIX0xS1qZ38L3nj9jcb0ZnLp0smV5OY6vS8Q0QPq4mddIA6qC6E9RWHy3zZOsm
         hlXqiSOhwmLOjDzPgqTnbQQ24CyjyHT4AqwF7fEV91JpKW+FXsw0e45ROmEHWs45iGDl
         T542q9SICUBRNBFXPfE6vNlw5n60lBNCuA1V+DrOya5NxRzYfR10E+DxpCmM1vxzBrgJ
         j3dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of markpearson@lenovo.com designates 67.219.246.112 as permitted sender) smtp.mailfrom=markpearson@lenovo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=lenovo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=elqzhYLKbaS8ZKsu3KtjKr4pPMjgYbCwof7LL4IypLg=;
        b=repFBwpKIJlBnwQ6pVj6QZRWWl8U9G3Y78SUtBXaqRwgScqEnjwdRKBb6E+CPPc9qM
         ahAXLEX7RwZhcXkt3t16hxqGD1tfYf75+JGg8BsO70Fd2Fh9cwfSWYlybyJnYtarJ7a8
         537VJeAM1pBySQCso71bDG30VCy99j7pJ6Lg5AUJUkM3oNq7PSQRGHxHL0jH1Ee8vISq
         1vGvVjviOwYXv2mlAmXOH3EHaHoiI7VAx2NZ1C4YaF9R3UlZGc/PmB1JgRkaCsVo56eP
         5AdWJFfT1/YHv4qcj7l6lzb+V4zt4BnmhSV/8Z5WLxXOCdLKn0YcFuxTIjcsMN5DyrWT
         ey/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=elqzhYLKbaS8ZKsu3KtjKr4pPMjgYbCwof7LL4IypLg=;
        b=PCeRIeUPjgFh1LsbiM9SxE1GsUbhY4PE4yhK16ACupz/jQ5+Gd2Xy7XVerJYtKDH7Z
         C0AmUsQxSdx7QXSwk6bMtJkjmFOyJNBHur3FketwaqnsyRBQgtcOH1oaaRgnIx2CYbxV
         D4O9Z/z7iaL/j9kHWGNoNM7pj/WASJGtXkU/qRVhTCkKhlJrFLFbqGPBYwDPNQ39a5I3
         kX6hE15BCZiiCj6Wft9grZ9Zb1mKdFTsPfbD67xBAzQ2zPgA+YTBLcNsTcCeq3Rg+kgp
         fPz2BjZFPJrDUCXpwwTnPphpkZwDSSy7oKaW+JjFk+oYdZ7UG/FxrvKrr5ruZRCSwTbr
         bOxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lZDbVQfkPWljFHoEByYTcek8Ot5yRv4yBPCwXLdmnwSMkFyWZ
	zzZEe9awbUgy4oyahoUrQhg=
X-Google-Smtp-Source: ABdhPJzUuThzb8y2T+TL34iOSMof5tZXmEi0XUNAOkKeoOJucBJDtd1GLmTvjLdj1k4bdd/nOt2f0w==
X-Received: by 2002:a05:6830:572:: with SMTP id f18mr37801882otc.109.1609256169752;
        Tue, 29 Dec 2020 07:36:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:12f5:: with SMTP id g108ls14593543otg.2.gmail; Tue, 29
 Dec 2020 07:36:09 -0800 (PST)
X-Received: by 2002:a9d:65d7:: with SMTP id z23mr36780734oth.131.1609256169425;
        Tue, 29 Dec 2020 07:36:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609256169; cv=none;
        d=google.com; s=arc-20160816;
        b=Upfz34gjleU1jsZF5lTuRC5IWoK/vIyQf3TVcXS3b9QEJ2Zu9gy467YD+3fTzNEyVT
         VRUqUCHk6xhhbr/mPQgifqWeDQmoaQBatrAZgPE3QXTaaizA803WKkC47WZfVGt0ETbj
         gq3BwUfrlfs/EyLre2IMdSQXrF0ofwPCN9p8CgID0zKbzprukSA42i9umss9FXnA2o1j
         elvVoBGkjwuU/lDcM0ibnNOd+Di+5I5xp+jNk9/35PSqFj0soLiABZKpFjUWY8c7hlky
         6RICcS8Oc9m7eyk/Hfi9KzDM7KD6owRj2h5sUl/8X7zvEo9BMc8QOaioHiHqbCqppj1Q
         LW3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=U+B0sQ2PU/j9tBjGl3E94c2few+YCGtuM6nIxMI8WVY=;
        b=Y//0mXOy0KsO0nQRtGWz8A51JukIo7DiAZVyR23IfyDgwK3Sjzqh5wQKi5YetavXM/
         wghOmQnHdmTBxMV9QYJFmuYQWCPjhdfnPdWp0TNG7HVLzooMTVGw+ie3C7OZ0ifGonZr
         zYKAStvsWFVZzz34ugODY+O8ChXc/ttMdl5UnVDbiw8lHMeyx/b/ii8Rmjgkohypw8UJ
         ZuOxIo2Mc8QTjDNWvNSFoNXdG522fMhfG430kS+BZ9aP1JJXyWcKoonH/ReEWjczX6ya
         L1Q/0+228uDyzCHil+SlQ446loDP/8V7UeNuiZaktf2gN9d19LMK2n2vTRvKHuNT+IHz
         QOuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of markpearson@lenovo.com designates 67.219.246.112 as permitted sender) smtp.mailfrom=markpearson@lenovo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=lenovo.com
Received: from mail1.bemta23.messagelabs.com (mail1.bemta23.messagelabs.com. [67.219.246.112])
        by gmr-mx.google.com with ESMTPS id r8si1534429otp.4.2020.12.29.07.36.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Dec 2020 07:36:09 -0800 (PST)
Received-SPF: pass (google.com: domain of markpearson@lenovo.com designates 67.219.246.112 as permitted sender) client-ip=67.219.246.112;
Received: from [100.112.5.40] (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-1.bemta.az-c.us-east-1.aws.symcld.net id BA/F1-29370-7EC4BEF5; Tue, 29 Dec 2020 15:36:07 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrAKsWRWlGSWpSXmKPExsWSLveKXfe5z+t
  4g18reSwevJnNZrFz2nUmizfHpzNZnO2+xmixfF8/o8Xn3iOMFq+aH7FZzP0yldnizOlLrA6c
  HhO/r2L32DPxJJvH4j0vmTw2repk8+ie/Y/F4/2+q2weW662s3h83iQXwBHFmpmXlF+RwJqxa
  +YUpoJd4hUN22ezNjDOEO5i5OIQEvjPKHFz3Xc2COcZo8THOf/AHGGBNYwS63vvsHQxcnKICG
  hLLFl0lRkkwSxwnUli6aUTrBAtdxklpi5pYgepYgOq2rLlFxuIzStgK/Fv7nygIg4OFgFVieO
  z5EDCogLhEuuXrGSEKBGUODnzCdgCToFAibbGzcwg5cwCmhLrd+mDhJkFxCVuPZnPBGHLS2x/
  O4cZxJYQkJP4vuIhO4SdILHs5R3mCYyCs5BMnYUwaRaSSbOQTFrAyLKK0SypKDM9oyQ3MTNH1
  9DAQNfQ0EjXTNfQwlgvsUo3Wa+0WDc1sbhE11AvsbxYr7gyNzknRS8vtWQTIzACUwrYtu9g3P
  v6g94hRkkOJiVRXmOv1/FCfEn5KZUZicUZ8UWlOanFhxhlODiUJHibQHKCRanpqRVpmTnAZAC
  TluDgURLhlQdJ8xYXJOYWZ6ZDpE4xZnJcvj5vETPHu5+LgeSbtUuA5FswefM9iGy7dxdItoPJ
  mQsOrmbmmAUm77cfApIPQKQQS15+XqqUOK+oN9ACAZAFGaV5cOthCfESo6yUMC8jAwODEE9Ba
  lFuZgmq/CtGcQ5GJWFeN5ApPJl5JXBXvgJ6gAnogYDy5yAPlCQipKQamHSNZqSKbLrqaOxnpJ
  q/VjnLJaAr7eGVy+mzOQ6+lEn8e15qv7jFNJOt30OXfvoXuKvZqUyeqcLpc30RM+vK3toFfNI
  RBsads/9MvrlqzcRo70OvpfMz2IXkF1fVy+sdTdrE+3LZoTQHlUiPdd3mNxpCL9wrXnx99YL7
  GWU7eDJ4uTtrjY3s7ENfLv29XyaQ73u56dxvgYJOnBqiLfIerBWSe2w35LI8uZ7578h1pXvnN
  +yaWvZYLiX0lVSym+xSyzPcMu8W7H1nz9gyeZE+l0qhl3B9oMWzMk2JNIaDhnG/Up688ZVrb5
  SKWrlVoH9XTfPRR+enbM76539Lq+nr7yDJ7gu6JyMbnh06MadSiaU4I9FQi7moOBEA95M7bwM
  EAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-8.tower-416.messagelabs.com!1609256165!631355!1
X-Originating-IP: [103.30.234.7]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.60.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 1302 invoked from network); 29 Dec 2020 15:36:06 -0000
Received: from unknown (HELO lenovo.com) (103.30.234.7)
  by server-8.tower-416.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP; 29 Dec 2020 15:36:06 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by Forcepoint Email with ESMTPS id CB687752948C4D78ECDE;
	Tue, 29 Dec 2020 23:36:02 +0800 (CST)
Received: from localhost.localdomain (10.38.50.3) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Tue, 29 Dec
 2020 07:36:00 -0800
Subject: Re: [External] Re: [pm:bleeding-edge 8612/8615]
 drivers/acpi/platform_profile.c:147:24: warning: address of array
 'pprof->choices' will always evaluate to 'true'
To: "Rafael J. Wysocki" <rafael@kernel.org>
CC: Hans de Goede <hdegoede@redhat.com>, kernel test robot <lkp@intel.com>,
	<kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>, ACPI Devel
 Maling List <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT
 ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM
	<linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <202012271352.JvNDF17O-lkp@intel.com>
 <34a43212-ff2b-cbc6-a670-975d39ac9f12@redhat.com>
 <16284400-7c71-ee40-b694-614d6daf21f5@lenovo.com>
 <CAJZ5v0je=BeU98tkXmE9Mu1aiqc4=o288S=uOuFwh=okWJC2eQ@mail.gmail.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <22e7ec14-faab-bddd-fff2-303ab3bff01e@lenovo.com>
Date: Tue, 29 Dec 2020 10:35:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0je=BeU98tkXmE9Mu1aiqc4=o288S=uOuFwh=okWJC2eQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.38.50.3]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Original-Sender: markpearson@lenovo.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of markpearson@lenovo.com designates 67.219.246.112 as
 permitted sender) smtp.mailfrom=markpearson@lenovo.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=lenovo.com
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

Hi Rafael

On 29/12/2020 10:23, Rafael J. Wysocki wrote:
> On Tue, Dec 29, 2020 at 12:18 AM Mark Pearson <markpearson@lenovo.com> wrote:
>>
>> Hi Hans
>>
>> On 27/12/2020 06:56, Hans de Goede wrote:
>>> Hi,
>>>
>>> On 12/27/20 6:11 AM, kernel test robot wrote:
>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
>>>> head:   a33520709645543f108361fe21fa9434a351c4e9
>>>> commit: 8c9b909fb1282e43792433e6c1cba125ccfc6201 [8612/8615] ACPI: platform-profile: Add platform profile support
>>>> config: x86_64-randconfig-a015-20201221 (attached as .config)
>>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
>>>> reproduce (this is a W=1 build):
>>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>         chmod +x ~/bin/make.cross
>>>>         # install x86_64 cross compiling tool for clang build
>>>>         # apt-get install binutils-x86-64-linux-gnu
>>>>         # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=8c9b909fb1282e43792433e6c1cba125ccfc6201
>>>>         git remote add pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
>>>>         git fetch --no-tags pm bleeding-edge
>>>>         git checkout 8c9b909fb1282e43792433e6c1cba125ccfc6201
>>>>         # save the attached .config to linux build tree
>>>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>>>>
>>>> If you fix the issue, kindly add following tag as appropriate
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>
>>>> All warnings (new ones prefixed by >>):
>>>>
>>>>>> drivers/acpi/platform_profile.c:147:24: warning: address of array 'pprof->choices' will always evaluate to 'true' [-Wpointer-bool-conversion]
>>>>            if (!pprof || !pprof->choices || !pprof->profile_set ||
>>>>                          ~~~~~~~~^~~~~~~
>>>>    1 warning generated.
>>>
>>>
>>> Ah, this is caused by changing choices from a single long to:
>>>
>>>       unsigned long choices[BITS_TO_LONGS(PLATFORM_PROFILE_LAST)];
>>>
>>> So that we can use for_each_set_bit and are future proof for more then
>>> 32 profiles.
>>>
>>> To fix this the check should be changed into this (untested):
>>>
>>> #include <linux/bitmap.h>
>>>
>>>       if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
>>>           !pprof->profile_set || !pprof->profile_get) {
>>>               mutex_unlock(&profile_lock);
>>>               return -EINVAL;
>>>       }
>>>
>>> Mark can you provide a (tested) patch for this?
>>>
>>> Regards,
>>>
>>> Hans
>>>
>> Will do!
> 
> Please note that I'm not going to push the material to Linus with this
> warning, so if you want it to go into 5.11, that needs to be addressed
> timely.
> 
> Thanks!
> 
Understood :) I tested this last night and it looks good. Do I push this
as a v8 patch on the current series or as a new standalone patch?

Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/22e7ec14-faab-bddd-fff2-303ab3bff01e%40lenovo.com.
