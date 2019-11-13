Return-Path: <clang-built-linux+bncBAABBEWHWHXAKGQENISO23I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE63FB97A
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 21:12:03 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id k15sf2458670wrp.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 12:12:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573675923; cv=pass;
        d=google.com; s=arc-20160816;
        b=poAi2yPKbhre4BlOdLGzshSl5U4jzX3nZ62lZerGBd0syiJ/DnFQWsfIk0NHS93ZH3
         iuOqUJr1bYtWBrBOCdGUR/Y7dhJYBas1Q9JGnKK1/2zvPECXQyb4IGwKa4Cs1koWpnj+
         c5q5mSKXGyul8Mtlbvsey9D1tUGd8fcEjNaigPiLBROJ2RmhTS8iwWLjU0ezgYy0bYRF
         uHDvEX89JQv0fncAiDQ0FaEBi3Efnqe+5Dkybzup4tfAPScl35XYFcEDTdVmuHdVz0pi
         fC2fCUYVFPNoAJfH6BQsLsGGaIh/tQ5ClQjOxkR1nq5KBXO5KUYo85m1CFeYVWRzCt/M
         YGrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=2I+nVik/GnjZzyogUZSdPo1oW2JE4MNH3XihfWf4SDQ=;
        b=qN1YmXgGpYlkuaXPFSPAAZ7PW/TZr7zltnZ0c2g4yE8Na0P7oIJwrVr0jiFqsFZzjU
         4SGhDwiVjFnshhpDpkGIhu0xb2ushqc0g14YNWpfWfYHB42OT//fZeecAMPWsoChHQSg
         4omf1ktolDww9iEu2m/ELXXQFVssyc0ApqJVs3KtKM4CJ1WGrqyGChEardx7V3dh3QTC
         ZHdrQaRcdykLLM64HmQVTqrO/dpk0RWeyKbuZg9OG9dPFirRjQgijRzT0u0J3cqo9Gs/
         lwxbtxa81vWP/C1AhzU4FM55HFjXAA8iqGrX0R5rs0qkNDmDy5EXrYoSdZYPOGlTQ+TU
         ySyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@shipmail.org header.s=mail header.b=qIYlqGC7;
       spf=pass (google.com: domain of thomas_os@shipmail.org designates 79.136.2.41 as permitted sender) smtp.mailfrom=thomas_os@shipmail.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2I+nVik/GnjZzyogUZSdPo1oW2JE4MNH3XihfWf4SDQ=;
        b=DMkh1ILB7iKQYlY9b0XE1PCx0JCtPCgvRur9+7nfo5LWnxmHbWSoZzySLVsuiTYbeN
         5gMWXMGe+46me+G0p8lTXIIC0dqkd1IOLA5V3Vwf0/MbAMxk/r11I5Chodh0BUrx2Y9x
         F7yqiJjmawMf62XlFCp6Qxmmcwr66VA6IgJGQUjwqoscEkNqN8rOy/QjtZaBESVFdHp7
         ptQqgI9JMFe74pqO9Mmx33PUSoa2vOtJFCRKr3oubj+uc2waRjcm02YnPMhl0VKBarga
         TY4XzPc7Sp4hWnsLbia9qYv1EEGUSzXz9GRuONEA6pdGnWKrzQThn9EqPsF2eTGf+3+k
         W4SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2I+nVik/GnjZzyogUZSdPo1oW2JE4MNH3XihfWf4SDQ=;
        b=nCrnCSnPGeW0BbAPfloyJtUzbQkJxtkKZQ17dGoqb57Ck9bJu3p+QAIDqma1DOsIhZ
         vyoMk/EgNHGpicp42MlaoDh5nFzHCPkwD/QDuZgXSKvmlzFThXkaKuEDOVk21fqTmlI1
         MhbQyMckGPKfbr92Nrf5TLEHqQREdP3sSZYBeQbiSWCsMPPnUYTfG4dxUzIo5FXQW8Hp
         tFzrhyvriI6L5IF+yNw6d4jjv/XLw6zKEYaT9Y5Kq3Y6wrdAA+AB0EdSOnUKS6FnOLW9
         BFZhAobanLUohd3o0razPWwbkE41XCMwROWkPrJ5lqowW7YEHkTpSBvblh2pWMn0Yu0t
         +Q/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGfEJhMeLKoUwIVph8MVtxLcleA3EgvklyeUnKBbzu4TvjjNBu
	bSl+5OIp6EKU6pm8hq5UbXU=
X-Google-Smtp-Source: APXvYqzeezlPuWoFwUYhXJD4ahIpcA6A6r0tCvkiz4tE1b5JHk+EkKA7L1nOx/UTLH3hWSSnZhFTkQ==
X-Received: by 2002:a5d:574d:: with SMTP id q13mr4888822wrw.263.1573675922798;
        Wed, 13 Nov 2019 12:12:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1008:: with SMTP id a8ls4457700wrx.3.gmail; Wed, 13
 Nov 2019 12:12:02 -0800 (PST)
X-Received: by 2002:adf:fb0b:: with SMTP id c11mr4758173wrr.50.1573675922132;
        Wed, 13 Nov 2019 12:12:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573675922; cv=none;
        d=google.com; s=arc-20160816;
        b=RDxsL0VQRbhGct6KNzlQ5odtIwAuNeOsl376itUAKbfXDgxqFPocvJWWoA97SR4Kur
         xC/FREmrfd0k0PwshfctXkbAwiclcdWznkXdqS8WjqwB4OSv7rqdR0Vpkn8m9juZI9pV
         KUTUYONzgpA+jX0LkRa+GvzxU9SqqQ0hvxbww9FST3IK+zGeNslYG99na9ZmuX7JSfvH
         AS80/qIkgLM50Xy48uITtv/hEjsjCPAOqaksZRqKtct8bE1JXBIiEiUdNf/6doraN3af
         zs5uu5ltRaGtz80yEy9N+uA7wMOjmXSmyGYkE92pDkmsKQBKngshVodYDiYA3l3M8ca5
         afLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=cu9p1LDvvv78cWXiUnDcyOxiG00+1xLIyMksZ61Ar0E=;
        b=b3t1NOI+Giv/pcjiKYZB+gSkp1ffvNrFOIo6bK0uNiXgDnM9LEOJXcMA+503BNJSuh
         rnYVhyvi5Dp9btSXJ0VC+J0WQVP3LG1IyXqPTsTkFvmU4pb/fVFSduiiWK/D6QF0pRfb
         c68vhwDUgWHQAQ5kG/Firoe0bGaNe0UKy1UkSk/toLpq7cl8d64evihhqwev1esm47ZZ
         mtDs3etOgYZ03S2LBE7Fc9/bV+p6l6jX10EO/6+ba3kpggwmjOEpvEpOxAn/c1kQ5cNE
         I2ExO+M3PxskPXFPLBWRwa21abyiY3Rt58bhDAwpLEcqTXb121zWqK/ZtJJEcc8BJsYm
         iaiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@shipmail.org header.s=mail header.b=qIYlqGC7;
       spf=pass (google.com: domain of thomas_os@shipmail.org designates 79.136.2.41 as permitted sender) smtp.mailfrom=thomas_os@shipmail.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se. [79.136.2.41])
        by gmr-mx.google.com with ESMTPS id y188si234370wmc.0.2019.11.13.12.12.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 12:12:01 -0800 (PST)
Received-SPF: pass (google.com: domain of thomas_os@shipmail.org designates 79.136.2.41 as permitted sender) client-ip=79.136.2.41;
Received: from localhost (localhost [127.0.0.1])
	by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id A5C4244E9D;
	Wed, 13 Nov 2019 21:12:00 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
	tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
	DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
	by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N54YzGlTUUoV; Wed, 13 Nov 2019 21:11:59 +0100 (CET)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
	(Authenticated sender: mb878879)
	by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 143BF408E5;
	Wed, 13 Nov 2019 21:11:55 +0100 (CET)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
	by mail1.shipmail.org (Postfix) with ESMTPSA id 6F3CD360103;
	Wed, 13 Nov 2019 21:11:55 +0100 (CET)
Subject: Re: drm/vmwgfx: Use dma-coherent memory for high-bandwidth port
 messaging
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: dri-devel@lists.freedesktop.org, Thomas Hellstrom
 <thellstrom@vmware.com>, Brian Paul <brianp@vmware.com>,
 clang-built-linux@googlegroups.com
References: <20191113095144.2981-1-thomas_os@shipmail.org>
 <20191113200153.GA27721@ubuntu-m2-xlarge-x86>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28VMware=29?= <thomas_os@shipmail.org>
Organization: VMware Inc.
Message-ID: <a2d2b374-229c-98fa-fb40-6e76a386f188@shipmail.org>
Date: Wed, 13 Nov 2019 21:11:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191113200153.GA27721@ubuntu-m2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: thomas_os@shipmail.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@shipmail.org header.s=mail header.b=qIYlqGC7;       spf=pass
 (google.com: domain of thomas_os@shipmail.org designates 79.136.2.41 as
 permitted sender) smtp.mailfrom=thomas_os@shipmail.org
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

Hi, Nathan,

On 11/13/19 9:01 PM, Nathan Chancellor wrote:
> On Wed, Nov 13, 2019 at 10:51:42AM +0100, Thomas Hellstr=C3=B6m (VMware) =
wrote:
>> From: Thomas Hellstrom <thellstrom@vmware.com>
>>
>> With AMD-SEV high-bandwidth port messaging runs into trouble since the
>> message content is encrypted using the vm-specific key, and the
>> hypervisor is unable to read it.
>>
>> So use unencrypted dma-coherent bounce buffers for temporary message
>> storage space. Allocating that memory is expensive so a future
>> optimization might include a static unencrypted memory area for messages=
.
>>
>> Signed-off-by: Thomas Hellstrom <thellstrom@vmware.com>
>> Reviewed-by: Brian Paul <brianp@vmware.com>
> Hi Thomas,
>
> The 0day team has been doing clang builds for us and sending the results
> to our mailing list for triage; this patch causes the following warning.
> Seems legitimate, mind taking a look at it and resolving it how you see
> fit?
>
> Cheers,
> Nathan

This should be harmless as dma_free_coherent() with reply =3D=3D NULL is a=
=20
nop, but anyway I'll respin to silence the warning.

Thanks,

Thomas


> On Thu, Nov 14, 2019 at 03:36:44AM +0800, kbuild test robot wrote:
>> CC: kbuild-all@lists.01.org
>> In-Reply-To: <20191113095144.2981-1-thomas_os@shipmail.org>
>> References: <20191113095144.2981-1-thomas_os@shipmail.org>
>> TO: "Thomas Hellstr=C3=B6m (VMware)" <thomas_os@shipmail.org>
>> CC: dri-devel@lists.freedesktop.org, Thomas Hellstrom <thellstrom@vmware=
.com>, Brian Paul <brianp@vmware.com>, Thomas Hellstrom <thellstrom@vmware.=
com>, Brian Paul <brianp@vmware.com>
>> CC: Thomas Hellstrom <thellstrom@vmware.com>, Brian Paul <brianp@vmware.=
com>
>>
>> Hi "Thomas,
>>
>> I love your patch! Perhaps something to improve:
>>
>> [auto build test WARNING on linus/master]
>> [also build test WARNING on v5.4-rc7 next-20191113]
>> [if your patch is applied to the wrong git tree, please drop us a note t=
o help
>> improve the system. BTW, we also suggest to use '--base' option to speci=
fy the
>> base tree in git format-patch, please see https://stackoverflow.com/a/37=
406982]
>>
>> url:    https://github.com/0day-ci/linux/commits/Thomas-Hellstr-m-VMware=
/drm-vmwgfx-Use-dma-coherent-memory-for-high-bandwidth-port-messaging/20191=
114-020818
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it 0e3f1ad80fc8cb0c517fd9a9afb22752b741fa76
>> config: x86_64-rhel-7.6 (attached as .config)
>> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 335ac2eb662=
ce5f1888e2a50310b01fba2d40d68)
>> reproduce:
>>          # save the attached .config to linux build tree
>>          make ARCH=3Dx86_64
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:441:6: warning: variable 'reply_ha=
ndle' is used uninitialized whenever '||' condition is true [-Wsometimes-un=
initialized]
>>             if (vmw_send_msg(&channel, msg) ||
>>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:467:47: note: uninitialized use =
occurs here
>>             dma_free_coherent(dev, reply_len + 1, reply, reply_handle);
>>                                                          ^~~~~~~~~~~~
>>     drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:441:6: note: remove the '||' if =
its condition is always false
>>             if (vmw_send_msg(&channel, msg) ||
>>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:421:37: note: initialize the var=
iable 'reply_handle' to silence this warning
>>             dma_addr_t req_handle, reply_handle;
>>                                                ^
>>                                                 =3D 0
>>     1 warning generated.
>>
>> vim +441 drivers/gpu/drm/vmwgfx/vmwgfx_msg.c
>>
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  400
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  401
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  402  /**
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  403   * vmw_host_get_guesti=
nfo: Gets a GuestInfo parameter
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  404   *
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  405   * Gets the value of a=
  GuestInfo.* parameter.  The value returned will be in
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  406   * a string, and it is=
 up to the caller to post-process.
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  407   *
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  408   * @dev: Pointer to st=
ruct device used for coherent memory allocation
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  409   * @guest_info_param: =
 Parameter to get, e.g. GuestInfo.svga.gl3
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  410   * @buffer: if NULL, *=
reply_len will contain reply size.
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  411   * @length: size of th=
e reply_buf.  Set to size of reply upon return
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  412   *
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  413   * Returns: 0 on succe=
ss
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  414   */
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  415  int vmw_host_get_guest=
info(struct device *dev, const char *guest_info_param,
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  416  			   char *buffer, si=
ze_t *length)
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  417  {
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  418  	struct rpc_channel ch=
annel;
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  419  	char *msg, *reply =3D=
 NULL;
>> 6073a09210e06f Himanshu Jha      2018-03-22  420  	size_t reply_len =3D =
0;
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  421  	dma_addr_t req_handle=
, reply_handle;
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  422  	int req_len =3D strle=
n("info-get ") + strlen(guest_info_param) + 1;
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  423
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  424  	if (!vmw_msg_enabled)
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  425  		return -ENODEV;
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  426
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  427  	if (!guest_info_param=
 || !length)
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  428  		return -EINVAL;
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  429
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  430  	msg =3D dma_alloc_coh=
erent(dev, req_len, &req_handle, GFP_KERNEL);
>> 1a4adb05632e90 Ravikant B Sharma 2016-11-08  431  	if (!msg) {
>> 3fbeccf8ceb165 Thomas Hellstrom  2018-06-20  432  		DRM_ERROR("Cannot al=
locate memory to get guest info \"%s\".",
>> 3fbeccf8ceb165 Thomas Hellstrom  2018-06-20  433  			  guest_info_param)=
;
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  434  		return -ENOMEM;
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  435  	}
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  436  	snprintf(msg, req_len=
, "info-get %s", guest_info_param);
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  437
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  438  	if (vmw_open_channel(=
&channel, RPCI_PROTOCOL_NUM))
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  439  		goto out_open;
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  440
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23 @441  	if (vmw_send_msg(&cha=
nnel, msg) ||
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  442  	    vmw_recv_msg(dev,=
 &channel, (void *) &reply, &reply_len,
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  443  			 &reply_handle))
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  444  		goto out_msg;
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  445
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  446  	vmw_close_channel(&ch=
annel);
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  447  	if (buffer && reply &=
& reply_len > 0) {
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  448  		/* Remove reply code=
, which are the first 2 characters of
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  449  		 * the reply
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  450  		 */
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  451  		reply_len =3D max(re=
ply_len - 2, (size_t) 0);
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  452  		reply_len =3D min(re=
ply_len, *length);
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  453
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  454  		if (reply_len > 0)
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  455  			memcpy(buffer, repl=
y + 2, reply_len);
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  456  	}
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  457
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  458  	*length =3D reply_len=
;
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  459
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  460  	dma_free_coherent(dev=
, reply_len + 1, reply, reply_handle);
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  461  	dma_free_coherent(dev=
, req_len, msg, req_handle);
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  462
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  463  	return 0;
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  464
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  465  out_msg:
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  466  	vmw_close_channel(&ch=
annel);
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  467  	dma_free_coherent(dev=
, reply_len + 1, reply, reply_handle);
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  468  out_open:
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  469  	*length =3D 0;
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  470
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  471  	DRM_ERROR("Failed to =
get guest info \"%s\".", guest_info_param);
>> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  472  	dma_free_coherent(dev=
, req_len, msg, req_handle);
>> f37230c0ad4810 Thomas Hellstrom  2018-05-23  473  	return -EINVAL;
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  474  }
>> 89da76fde68de1 Sinclair Yeh      2016-04-27  475
>>
>> :::::: The code at line 441 was first introduced by commit
>> :::::: f37230c0ad481091bc136788ff8b37dc86300c6d drm/vmwgfx: Fix host log=
ging / guestinfo reading error paths
>>
>> :::::: TO: Thomas Hellstrom <thellstrom@vmware.com>
>> :::::: CC: Thomas Hellstrom <thellstrom@vmware.com>
>>
>> ---
>> 0-DAY kernel test infrastructure                 Open Source Technology =
Center
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corpo=
ration


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a2d2b374-229c-98fa-fb40-6e76a386f188%40shipmail.org.
