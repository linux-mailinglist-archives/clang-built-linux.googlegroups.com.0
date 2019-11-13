Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNGCWHXAKGQESKX6SJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E545FB94E
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 21:01:58 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id g13sf2215591qtq.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 12:01:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573675317; cv=pass;
        d=google.com; s=arc-20160816;
        b=MBJBLp6gsZ1U6rhmSosFfabRoKBEleOeadApEUVv5271l22TO6Z28/K0XtuGTwyu0E
         G+qhTdb74YkInnT2ghFLCDRMPWKIKX0B9AS7/5VltToGZZvABoyBmKLF/qBQ0M/9O6RA
         OCRtQzEazp3IuU4H4zZAWfNjStMscrb0XJQXqHh3Yjg0lG6XLDELwfqoz9ZrL8r5Hdn7
         L9COEv1mYthVXwXPR5/k3qudeEcAtwDFU7Vv+nath6slFaVLovABCszB9CDRGENltJJI
         m1/PpD64CduBBaS7XJhJ9kHvbbFPCyNLknkph0zECTx5g4c9+HtsnxCq+37G590II59o
         cV9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=S/xz/ZhsMAlPh2dJdUsAN79BvsrNa0pQHkTZBkDENiI=;
        b=kNO5xu3H/Fplm6ts7dPtWoJHjw3YdAKb12cQysbz/LakoCl1VGKm42afIBYFSWJayh
         zlDyYhV/gIuvxEvGVDtlvYMcV1XVSfSgMmhQcjMQLzHVFFHG/yHX/ZlwqjTqE26lvAyO
         ku10mz5Q2MWka7H7IG/bBnwsfT7RWkJ4N2X44fstILgOigxXafT5Djc1k2CdkMgjheuN
         SYnacPnjuHKFbE9OE3Ml2wc84BmRrlcC7hkyy0FJ1XQxTb048kVMqYil77zP/s4Zw7yY
         CnLlLYgLbAaOPO+O4sIjfDkJwS8xhIqiaYtw9INvEBMn/cbemA+QkGZUQXUvWPQoB0Vg
         QluQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eOLSR4IL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/xz/ZhsMAlPh2dJdUsAN79BvsrNa0pQHkTZBkDENiI=;
        b=fA9Ftg6dvSQv1gPiWB7FDOQ8VJaoCvgN5p9Oqaqrt1G0UchDf2Jx3tev0FmGkdVhG6
         EkLXA2fJs4ayS3JzPWAgMLiJmxgdB7sbkAFtihBCJI7BJ2wXBGYA8Ud9PBvY0ixn7ms4
         IMJ7rBsttAb21HatxF+2kIj2KVRKQ+UPVrDBMhgw8sGqm4x5gcnZzIPT+/Ara1814pO1
         hNsYYra2hsFd1JpvHuWWp3CTrDmnFn+UDkRUlqOmxoNgLuzl1WzMxxup48bhQ+lb8On1
         kurIfdecEcuHh1p5goXmJxmiu98aZkn3dLsh5chmpmB/tuQY7bkFSkqpIHjnQ7nXGgHb
         cOoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/xz/ZhsMAlPh2dJdUsAN79BvsrNa0pQHkTZBkDENiI=;
        b=RCuoNOYfoAKuxxvsK7J7k4DTKx/REKdGwFpJkRUuZazf2NWKxacmzsq1nDdClwHUFp
         eNk/ePKl+mD7qWEE7/SqvmOej1h2wIV+lnHrCec/7LZL0dcBsIXnr8U7mHuknK52+6ad
         eRFFI0uKu/cKCE0uU6onn5403KxngluWvy0fX1+kwdech70zcFLYVIbun760mXs2i0GC
         HVFTi3cCDjHar9+g+uolpx+QXBUYC14nauhAJ+NU0qovigVj1eMHYlxeIKLvwFwOuhsO
         D41xn2B5c4GVOl9Y/pph3Db5vTT1Rk7GAT/Eqb0UGVD8QODR3xIlNBPfigW2aWuEh9I0
         KnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/xz/ZhsMAlPh2dJdUsAN79BvsrNa0pQHkTZBkDENiI=;
        b=YxQMAOMqKbiU98TvjVOb45xE1RF6KadhJbonQ7JK6AV5EGNi5i4CEU3vbzXo/aLi3P
         3dNIUKEk/Dap2Z4OsZ9K1OuUaQTf9fkMqF2m/kxORphbKKH03aV7t1gOQvf/2rJbM8kI
         xU2cqeN93tvrV7FP/0erXRzIn0x8apz3lFF3mu9Zn63lr0qNto7XOk9AoI+dQasCF3eJ
         LPpbPWMXZqWLMbwmJNEtIgBwyt01HwRBoMoMEpuPoFpLg0KqowLKm3+YW0kqPr4PIaX8
         0QnrouYhZ7DQ8RbwJhY4bvylC73ufTNpyVm94K7IgfOzwamsIu/VNWL+H8Ge5E3Gsw3b
         lHag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUKNqiUgG9I1tJje4DplmWjQcyiwxZFoY2BqAb0oNogVAkQSKmt
	kMgGStBdLITS5RMeaL4ItB4=
X-Google-Smtp-Source: APXvYqxUOS+CgUiIsUcNKqiPYvAQDMe7wvr/Fv50No554r1CMUHKV6IL35XnwskCIjk9agGoxfCTEQ==
X-Received: by 2002:a05:6214:14f0:: with SMTP id k16mr2941672qvw.113.1573675316943;
        Wed, 13 Nov 2019 12:01:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d24a:: with SMTP id o10ls6823qvh.14.gmail; Wed, 13 Nov
 2019 12:01:56 -0800 (PST)
X-Received: by 2002:a0c:bf4d:: with SMTP id b13mr4476221qvj.115.1573675316467;
        Wed, 13 Nov 2019 12:01:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573675316; cv=none;
        d=google.com; s=arc-20160816;
        b=KyeSb2a18heSfRq+r3kqD2yAu8IPuKwPaNdT+e46kgdFB32cGNJvvSezMANvA9Immo
         +chvqMVm1bq2mckfK5htB14PSu5O29MwtjQN+yqIyFs47Qwn0rW4Mf7smA+y+U0AI3kI
         UorSND08+aFlyqnVQJr2dXvCtHklGeQrIHI75o+F4R4UCWYS92GgIf/UvFdPR10Pb1Qg
         Zl38FRcBenTA4iOX1dm+nkcaQ8RZorBK77mlQri+QVizExmO6Mf9tYsORYSv6BD03g+W
         dbm2ug3MBSXC/T4O3uv8f7eKCsjz6sTDxJ3ujtV/MTvyqhJV+CGlMim5ib2e74dtnhDx
         IX/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=5NQ/fkONrDNlfSNv47/KdvwRsxJL5bllFVDji1nqk1U=;
        b=eZ8D5QTlMk9AUAu7tUsNXXkhJhwEO9JNXhATvGhqpcVLkwrhgJBLZiXPY6BXUrRL6x
         hg+znyoP/LnY/uMMBy951uwceO5Dxb6M7b48UIbEojvBx6JwJqQ0BFlzR0G+NWhNUU+t
         8TNsLSVLtBD3ni2bAFrBBLLM1CnPiASlGUzah9C4IRPUpKDyxCcKceGrBMiwRo0M7n8q
         5O48fRva3HYjIdnH7O6t7Y4KHCBE+jx8onAUxliaA4n66/IKQf4eikwn06p4rScL027v
         Y5ZjM80ML17wOQ30FeFWYiwV4digjerC6H3ANElCLsXXOsHX0PazRGNT7BQ0vHKGeJvD
         eUCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eOLSR4IL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id y199si199534qka.3.2019.11.13.12.01.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2019 12:01:56 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id u13so2772607ote.0
        for <clang-built-linux@googlegroups.com>; Wed, 13 Nov 2019 12:01:56 -0800 (PST)
X-Received: by 2002:a9d:5605:: with SMTP id e5mr4164429oti.150.1573675315617;
        Wed, 13 Nov 2019 12:01:55 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id o14sm958111oie.24.2019.11.13.12.01.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Nov 2019 12:01:54 -0800 (PST)
Date: Wed, 13 Nov 2019 13:01:53 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28VMware=29?= <thomas_os@shipmail.org>
Cc: dri-devel@lists.freedesktop.org,
	Thomas Hellstrom <thellstrom@vmware.com>,
	Brian Paul <brianp@vmware.com>, clang-built-linux@googlegroups.com
Subject: Re: drm/vmwgfx: Use dma-coherent memory for high-bandwidth port
 messaging
Message-ID: <20191113200153.GA27721@ubuntu-m2-xlarge-x86>
References: <20191113095144.2981-1-thomas_os@shipmail.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191113095144.2981-1-thomas_os@shipmail.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eOLSR4IL;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Nov 13, 2019 at 10:51:42AM +0100, Thomas Hellstr=C3=B6m (VMware) wr=
ote:
> From: Thomas Hellstrom <thellstrom@vmware.com>
>=20
> With AMD-SEV high-bandwidth port messaging runs into trouble since the
> message content is encrypted using the vm-specific key, and the
> hypervisor is unable to read it.
>=20
> So use unencrypted dma-coherent bounce buffers for temporary message
> storage space. Allocating that memory is expensive so a future
> optimization might include a static unencrypted memory area for messages.
>=20
> Signed-off-by: Thomas Hellstrom <thellstrom@vmware.com>
> Reviewed-by: Brian Paul <brianp@vmware.com>

Hi Thomas,

The 0day team has been doing clang builds for us and sending the results
to our mailing list for triage; this patch causes the following warning.
Seems legitimate, mind taking a look at it and resolving it how you see
fit?

Cheers,
Nathan

On Thu, Nov 14, 2019 at 03:36:44AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191113095144.2981-1-thomas_os@shipmail.org>
> References: <20191113095144.2981-1-thomas_os@shipmail.org>
> TO: "Thomas Hellstr=C3=B6m (VMware)" <thomas_os@shipmail.org>
> CC: dri-devel@lists.freedesktop.org, Thomas Hellstrom <thellstrom@vmware.=
com>, Brian Paul <brianp@vmware.com>, Thomas Hellstrom <thellstrom@vmware.c=
om>, Brian Paul <brianp@vmware.com>
> CC: Thomas Hellstrom <thellstrom@vmware.com>, Brian Paul <brianp@vmware.c=
om>
>=20
> Hi "Thomas,
>=20
> I love your patch! Perhaps something to improve:
>=20
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.4-rc7 next-20191113]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Thomas-Hellstr-m-VMware/=
drm-vmwgfx-Use-dma-coherent-memory-for-high-bandwidth-port-messaging/201911=
14-020818
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t 0e3f1ad80fc8cb0c517fd9a9afb22752b741fa76
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 335ac2eb662c=
e5f1888e2a50310b01fba2d40d68)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:441:6: warning: variable 'reply_ha=
ndle' is used uninitialized whenever '||' condition is true [-Wsometimes-un=
initialized]
>            if (vmw_send_msg(&channel, msg) ||
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:467:47: note: uninitialized use oc=
curs here
>            dma_free_coherent(dev, reply_len + 1, reply, reply_handle);
>                                                         ^~~~~~~~~~~~
>    drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:441:6: note: remove the '||' if it=
s condition is always false
>            if (vmw_send_msg(&channel, msg) ||
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/vmwgfx/vmwgfx_msg.c:421:37: note: initialize the varia=
ble 'reply_handle' to silence this warning
>            dma_addr_t req_handle, reply_handle;
>                                               ^
>                                                =3D 0
>    1 warning generated.
>=20
> vim +441 drivers/gpu/drm/vmwgfx/vmwgfx_msg.c
>=20
> 89da76fde68de1 Sinclair Yeh      2016-04-27  400 =20
> 89da76fde68de1 Sinclair Yeh      2016-04-27  401 =20
> 89da76fde68de1 Sinclair Yeh      2016-04-27  402  /**
> 89da76fde68de1 Sinclair Yeh      2016-04-27  403   * vmw_host_get_guestin=
fo: Gets a GuestInfo parameter
> 89da76fde68de1 Sinclair Yeh      2016-04-27  404   *
> 89da76fde68de1 Sinclair Yeh      2016-04-27  405   * Gets the value of a =
 GuestInfo.* parameter.  The value returned will be in
> 89da76fde68de1 Sinclair Yeh      2016-04-27  406   * a string, and it is =
up to the caller to post-process.
> 89da76fde68de1 Sinclair Yeh      2016-04-27  407   *
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  408   * @dev: Pointer to str=
uct device used for coherent memory allocation
> 89da76fde68de1 Sinclair Yeh      2016-04-27  409   * @guest_info_param:  =
Parameter to get, e.g. GuestInfo.svga.gl3
> 89da76fde68de1 Sinclair Yeh      2016-04-27  410   * @buffer: if NULL, *r=
eply_len will contain reply size.
> 89da76fde68de1 Sinclair Yeh      2016-04-27  411   * @length: size of the=
 reply_buf.  Set to size of reply upon return
> 89da76fde68de1 Sinclair Yeh      2016-04-27  412   *
> 89da76fde68de1 Sinclair Yeh      2016-04-27  413   * Returns: 0 on succes=
s
> 89da76fde68de1 Sinclair Yeh      2016-04-27  414   */
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  415  int vmw_host_get_guesti=
nfo(struct device *dev, const char *guest_info_param,
> 89da76fde68de1 Sinclair Yeh      2016-04-27  416  			   char *buffer, siz=
e_t *length)
> 89da76fde68de1 Sinclair Yeh      2016-04-27  417  {
> 89da76fde68de1 Sinclair Yeh      2016-04-27  418  	struct rpc_channel cha=
nnel;
> 89da76fde68de1 Sinclair Yeh      2016-04-27  419  	char *msg, *reply =3D =
NULL;
> 6073a09210e06f Himanshu Jha      2018-03-22  420  	size_t reply_len =3D 0=
;
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  421  	dma_addr_t req_handle,=
 reply_handle;
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  422  	int req_len =3D strlen=
("info-get ") + strlen(guest_info_param) + 1;
> 89da76fde68de1 Sinclair Yeh      2016-04-27  423 =20
> 89da76fde68de1 Sinclair Yeh      2016-04-27  424  	if (!vmw_msg_enabled)
> 89da76fde68de1 Sinclair Yeh      2016-04-27  425  		return -ENODEV;
> 89da76fde68de1 Sinclair Yeh      2016-04-27  426 =20
> 89da76fde68de1 Sinclair Yeh      2016-04-27  427  	if (!guest_info_param =
|| !length)
> 89da76fde68de1 Sinclair Yeh      2016-04-27  428  		return -EINVAL;
> 89da76fde68de1 Sinclair Yeh      2016-04-27  429 =20
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  430  	msg =3D dma_alloc_cohe=
rent(dev, req_len, &req_handle, GFP_KERNEL);
> 1a4adb05632e90 Ravikant B Sharma 2016-11-08  431  	if (!msg) {
> 3fbeccf8ceb165 Thomas Hellstrom  2018-06-20  432  		DRM_ERROR("Cannot all=
ocate memory to get guest info \"%s\".",
> 3fbeccf8ceb165 Thomas Hellstrom  2018-06-20  433  			  guest_info_param);
> 89da76fde68de1 Sinclair Yeh      2016-04-27  434  		return -ENOMEM;
> 89da76fde68de1 Sinclair Yeh      2016-04-27  435  	}
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  436  	snprintf(msg, req_len,=
 "info-get %s", guest_info_param);
> 89da76fde68de1 Sinclair Yeh      2016-04-27  437 =20
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  438  	if (vmw_open_channel(&=
channel, RPCI_PROTOCOL_NUM))
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  439  		goto out_open;
> 89da76fde68de1 Sinclair Yeh      2016-04-27  440 =20
> f37230c0ad4810 Thomas Hellstrom  2018-05-23 @441  	if (vmw_send_msg(&chan=
nel, msg) ||
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  442  	    vmw_recv_msg(dev, =
&channel, (void *) &reply, &reply_len,
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  443  			 &reply_handle))
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  444  		goto out_msg;
> 89da76fde68de1 Sinclair Yeh      2016-04-27  445 =20
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  446  	vmw_close_channel(&cha=
nnel);
> 89da76fde68de1 Sinclair Yeh      2016-04-27  447  	if (buffer && reply &&=
 reply_len > 0) {
> 89da76fde68de1 Sinclair Yeh      2016-04-27  448  		/* Remove reply code,=
 which are the first 2 characters of
> 89da76fde68de1 Sinclair Yeh      2016-04-27  449  		 * the reply
> 89da76fde68de1 Sinclair Yeh      2016-04-27  450  		 */
> 89da76fde68de1 Sinclair Yeh      2016-04-27  451  		reply_len =3D max(rep=
ly_len - 2, (size_t) 0);
> 89da76fde68de1 Sinclair Yeh      2016-04-27  452  		reply_len =3D min(rep=
ly_len, *length);
> 89da76fde68de1 Sinclair Yeh      2016-04-27  453 =20
> 89da76fde68de1 Sinclair Yeh      2016-04-27  454  		if (reply_len > 0)
> 89da76fde68de1 Sinclair Yeh      2016-04-27  455  			memcpy(buffer, reply=
 + 2, reply_len);
> 89da76fde68de1 Sinclair Yeh      2016-04-27  456  	}
> 89da76fde68de1 Sinclair Yeh      2016-04-27  457 =20
> 89da76fde68de1 Sinclair Yeh      2016-04-27  458  	*length =3D reply_len;
> 89da76fde68de1 Sinclair Yeh      2016-04-27  459 =20
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  460  	dma_free_coherent(dev,=
 reply_len + 1, reply, reply_handle);
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  461  	dma_free_coherent(dev,=
 req_len, msg, req_handle);
> 89da76fde68de1 Sinclair Yeh      2016-04-27  462 =20
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  463  	return 0;
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  464 =20
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  465  out_msg:
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  466  	vmw_close_channel(&cha=
nnel);
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  467  	dma_free_coherent(dev,=
 reply_len + 1, reply, reply_handle);
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  468  out_open:
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  469  	*length =3D 0;
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  470 =20
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  471  	DRM_ERROR("Failed to g=
et guest info \"%s\".", guest_info_param);
> 6bdb21230a2a01 Thomas Hellstrom  2019-11-13  472  	dma_free_coherent(dev,=
 req_len, msg, req_handle);
> f37230c0ad4810 Thomas Hellstrom  2018-05-23  473  	return -EINVAL;
> 89da76fde68de1 Sinclair Yeh      2016-04-27  474  }
> 89da76fde68de1 Sinclair Yeh      2016-04-27  475 =20
>=20
> :::::: The code at line 441 was first introduced by commit
> :::::: f37230c0ad481091bc136788ff8b37dc86300c6d drm/vmwgfx: Fix host logg=
ing / guestinfo reading error paths
>=20
> :::::: TO: Thomas Hellstrom <thellstrom@vmware.com>
> :::::: CC: Thomas Hellstrom <thellstrom@vmware.com>
>=20
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology C=
enter
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corpor=
ation

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191113200153.GA27721%40ubuntu-m2-xlarge-x86.
