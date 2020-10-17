Return-Path: <clang-built-linux+bncBDY3NC743AGBBO76VT6AKGQEV4DOKGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C73F2913C3
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 21:00:13 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id cm15sf3776989pjb.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 12:00:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602961212; cv=pass;
        d=google.com; s=arc-20160816;
        b=hGY1Z2i1LY8DPDrjo27Qr+sTlu7PA2vudZ+hXpHH/xSHIbrqpodxRLYpehnqj8HpWW
         BegypgihzJqZjCwxelP5oFj7thDxIknrylPC1i6OBrBQR5a7BwF8rnljG5Vt25Yw4bTo
         AqUcmEoA0iH0pP1Z34yjrKlRF7cVeBNdJ+ypY7jrEgiJeDxUSEOIa102/QJwFfVT5vYY
         nshAccP69rbg0XXITlz3QY8YzO93hfIh6j3SbaHDlu5Zx6smpzr4hm5pJ9RNel6FiDkF
         kmd617r/2Nxzc6pFFIBnrkYJ5DMyk99hLbE/N8qoq/QQCrynYkMEBGwBVUvfPUDp0mZw
         j5aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=HoYhMD/Bx8qFhA+eKZ5ByB7Xogyi9ncqtPGWsqf0lN8=;
        b=HUdY7+rafcVXZe9K9E8/eGzr5GgtTjC+e2rrtX9qm+W1reA1+Cck+IA1FX3FnJoeBB
         b0UhP5kwPsUc5bWPmV6je2uNQ/bxIesoz/N1XodSriuJDCq5qSpgDNt+4+mKvApo/WZ/
         BulU1/z4k+AV6mq4rL/yN/JLzQTZdIt//rzDfKhKitWoP7F1pI69lt+U3xh+m4tvq3Or
         1pRSZ+brvrRrEKHXfFSS2byhhQFcpcIwM9CJvlae/WU+uUa9vB1AUop/IRL2k1fy7Pqd
         Z0g5M+3weuKf6/oKUE264j9vzlzFf1uqOu2krcZi/yLXsj7rVZG01ve2kaNFDQvvRqXb
         Qoeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.253 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HoYhMD/Bx8qFhA+eKZ5ByB7Xogyi9ncqtPGWsqf0lN8=;
        b=sWTU9z2Z0vq+R/pIpBGmi9aE0swZCuUE8DCOoE8sjUt9kh9SU9Lf3GK8nYzRnR4B5q
         W2rzBs3pDo03wX5O5K2psTLvMK63Wzu3hEA1reP64w1DsqqBuYCWIbcA2IhLRiMnWpov
         TLUYjp3yrN7gpxXPhB3zHizpCq7Rd5IJ7a6tgsiboWEfKqz8ln5EQqZCrFznAQgDPwIE
         Om1VWHszZKBaMUQyo8MoAwNmDxAE0W6J6J+IViePSUzoaW4TmckA2cdMQXn8iIpVLf+5
         L1sWH1TX52bNzM8nxmXRjV/RvkMv+3OB/IrACUm+0BN2Clr3VucDwNIl/WmrtgvX/4ZH
         zFmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HoYhMD/Bx8qFhA+eKZ5ByB7Xogyi9ncqtPGWsqf0lN8=;
        b=AFrLxfYjNW+eX2imLMWoLAXfPHikqX9vl4rE4wZi5Q9Vt12ZkgwDqb2DKbxvGy4+Fz
         0FbCWi9OuMNaEmefmFNPtKQHW7D363KXom6b7kDWbipRIbyelexQafQzXcSZKq2I20Y2
         7NhRi0h1kS7DItn2b4QQgjajza8OHFura6i1nJb6awvgzafcFynqeoD0cOPT+gvGlSPq
         jzbmAV3rlNL7Tsa3uAFBea/HB1q4EifJkdGlgzHISx9yPnyf6SgSGXFTSQ8E53A4bOiq
         XbzSQzfV+ybHhcDLrVhlF2LYia6cH1I1vdlSbsBvbLfUs+wFHPhmV3R8zrsCqci+W4KK
         oTHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dDyNYbz6Pfrs/obdXKkYR673fID5I1vEhtb9X1V7ECjzd4c9z
	uyp0L7MIJeMjxg9GGxVGpHY=
X-Google-Smtp-Source: ABdhPJxeeJuTPWiw6I/CSKzp+bnsjYLXKkrRoIq4/SOlpH5Algu3dVgIiqqD4rvGf+PYxOy+GDJ95g==
X-Received: by 2002:a62:105:0:b029:155:c7c0:3a81 with SMTP id 5-20020a6201050000b0290155c7c03a81mr9716701pfb.34.1602961211984;
        Sat, 17 Oct 2020 12:00:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:930f:: with SMTP id 15ls2028788pfj.5.gmail; Sat, 17 Oct
 2020 12:00:11 -0700 (PDT)
X-Received: by 2002:a62:52c3:0:b029:152:880f:1782 with SMTP id g186-20020a6252c30000b0290152880f1782mr9672167pfb.35.1602961211314;
        Sat, 17 Oct 2020 12:00:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602961211; cv=none;
        d=google.com; s=arc-20160816;
        b=d03HRzC9NtXe8VwLMxQZZku/0czTc7/fa4rIkVhV/hgQ6zRQlAU5TqeSDUBdofjbtm
         UnA7Coqgm+G2O3Wb7TPtF6fPeU98jrL27vbPQVZ0d3be8nAI3RUGq72vVkoa37jTielm
         KU5JsaQG46YTKbHqGdHoyFShgOT7FGs3mqlKvnVXsoC9CZwu1nnA1OkWiSvYkDwXuV60
         /D/YuZASRw1mJlEYv9NMibHrJDnrR0p3EyAv5XHJLwLKh/+gEnP2Ckm92TqG3kf3+VFT
         aWH7wfzhmd5ybSnm5Id48YjBtUULCCX0vh74+jyqqLJ0nxDZkBleDbs/Ui5nAmjbEOF/
         5lbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=H/4I6qk6HDVIcsniPlsf0ugIovr/HIjDwzCcKkuA1aw=;
        b=cV09BM2s/Ugo0SODk7k+0Ei+xPb22DVJBDDdBPd9EP97fbxz1libHDQtoxisub7e6e
         y0di4//UTJqeKpAL6LPTSEdARXau6ufAveQ4KDJoiWyeKOsRUBxwrpRmBgnUKDlOeUxx
         wZChiTNrERgOBzWBMzHeSJKZ/JsfMG4Qw+Bvkh2h9ad2UVGTrK11DRi5sacB3DfoVuR8
         gP+jGSkW0fLHKhbeXy96QDQzu78oSd9Aj3AgEm+o4+JcwcxHVL9IotNSQHZ+ZjkqYaiK
         70ER7SrWW3ZFaDhDSO1VCz02XRYycB6hpnWkNbN5kbMS8GBa6iypQtrPhy/YZ/AxFtHj
         e6jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.253 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0253.hostedemail.com. [216.40.44.253])
        by gmr-mx.google.com with ESMTPS id i9si371874pjh.3.2020.10.17.12.00.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 12:00:11 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.253 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.253;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 15895182CED2A;
	Sat, 17 Oct 2020 19:00:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1434:1437:1515:1516:1518:1535:1542:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2525:2553:2561:2564:2682:2685:2693:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3355:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4470:4823:5007:6117:6742:6743:7576:7903:8660:8792:8957:9010:9025:9108:10004:10400:10450:10455:11232:11658:11914:12043:12050:12295:12296:12297:12438:12555:12663:12740:12760:12895:12986:13138:13148:13230:13231:13439:14096:14097:14181:14659:14721:19904:19999:21080:21324:21451:21627:21939:21990:30029:30034:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: jewel08_4005cbe27228
X-Filterd-Recvd-Size: 5179
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Sat, 17 Oct 2020 19:00:02 +0000 (UTC)
Message-ID: <503af4a57ca6daeb3e42a9be136dcd21e6d6e23d.camel@perches.com>
Subject: Re: [Cocci] [RFC] treewide: cleanup unreachable breaks
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: trix@redhat.com, linux-kernel@vger.kernel.org, cocci
 <cocci@systeme.lip6.fr>,  alsa-devel@alsa-project.org,
 clang-built-linux@googlegroups.com,  linux-iio@vger.kernel.org,
 nouveau@lists.freedesktop.org,  storagedev@microchip.com,
 dri-devel@lists.freedesktop.org, 
 virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org, 
 linux-mtd@lists.infradead.org, ath10k@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com,
 usb-storage@lists.one-eyed-alien.net,  linux-watchdog@vger.kernel.org,
 devel@driverdev.osuosl.org,  linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org,  linux-nvdimm@lists.01.org,
 amd-gfx@lists.freedesktop.org,  linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, 
 industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org, 
 spice-devel@lists.freedesktop.org, MPT-FusionLinux.pdl@broadcom.com, 
 linux-media@vger.kernel.org, linux-serial@vger.kernel.org, 
 linux-nfc@lists.01.org, linux-pm@vger.kernel.org,
 linux-can@vger.kernel.org,  linux-block@vger.kernel.org,
 linux-gpio@vger.kernel.org,  xen-devel@lists.xenproject.org,
 linux-amlogic@lists.infradead.org, 
 openipmi-developer@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org,  linux-integrity@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-edac@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-security-module@vger.kernel.org, 
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
 bpf@vger.kernel.org,  ocfs2-devel@oss.oracle.com,
 linux-power@fi.rohmeurope.com
Date: Sat, 17 Oct 2020 12:00:01 -0700
In-Reply-To: <alpine.DEB.2.22.394.2010172016370.9440@hadrien>
References: <20201017160928.12698-1-trix@redhat.com>
	 <f530b7aeecbbf9654b4540cfa20023a4c2a11889.camel@perches.com>
	 <alpine.DEB.2.22.394.2010172016370.9440@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.253 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2020-10-17 at 20:21 +0200, Julia Lawall wrote:
> On Sat, 17 Oct 2020, Joe Perches wrote:
> > On Sat, 2020-10-17 at 09:09 -0700, trix@redhat.com wrote:
> > > From: Tom Rix <trix@redhat.com>
> > > 
> > > This is a upcoming change to clean up a new warning treewide.
> > > I am wondering if the change could be one mega patch (see below) or
> > > normal patch per file about 100 patches or somewhere half way by collecting
> > > early acks.
> > > 
> > > clang has a number of useful, new warnings see
> > > https://clang.llvm.org/docs/DiagnosticsReference.html
> > > 
> > > This change cleans up -Wunreachable-code-break
> > > https://clang.llvm.org/docs/DiagnosticsReference.html#wunreachable-code-break
> > > for 266 of 485 warnings in this week's linux-next, allyesconfig on x86_64.
> > 
> > Early acks/individual patches by subsystem would be good.
> > Better still would be an automated cocci script.
> 
> Coccinelle is not especially good at this, because it is based on control
> flow, and a return or goto diverts the control flow away from the break.
> A hack to solve the problem is to put an if around the return or goto, but
> that gives the break a meaningless file name and line number.  I collected
> the following list, but it only has 439 results, so fewer than clang.  But
> maybe there are some files that are not considered by clang in the x86
> allyesconfig configuration.
> 
> Probably checkpatch is the best solution here, since it is not
> configuration sensitive and doesn't care about control flow.

Likely the clang compiler is the best option here.

It might be useful to add -Wunreachable-code-break to W=1
or just always enable it if it isn't already enabled.

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 95e4cdb94fe9..3819787579d5 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -32,6 +32,7 @@ KBUILD_CFLAGS += $(call cc-option, -Wunused-but-set-variable)
 KBUILD_CFLAGS += $(call cc-option, -Wunused-const-variable)
 KBUILD_CFLAGS += $(call cc-option, -Wpacked-not-aligned)
 KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
+KBUILD_CFLAGS += $(call cc-option, -Wunreachable-code-break)
 # The following turn off the warnings enabled by -Wextra
 KBUILD_CFLAGS += -Wno-missing-field-initializers
 KBUILD_CFLAGS += -Wno-sign-compare

(and thank you Tom for pushing this forward)

checkpatch can't find instances like:

	case FOO:
		if (foo)
			return 1;
		else
			return 2;
		break;

As it doesn't track flow and relies on the number
of tabs to be the same for any goto/return and break;

checkpatch will warn on:

	case FOO:
		...
		goto bar;
		break;


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/503af4a57ca6daeb3e42a9be136dcd21e6d6e23d.camel%40perches.com.
