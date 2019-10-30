Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDVG4PWQKGQEWK33H7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CE3E93F9
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 01:02:24 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id h12sf258128pgd.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 17:02:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572393743; cv=pass;
        d=google.com; s=arc-20160816;
        b=LdhP6/DOs+C+/2ynkC06gqWGWldeeqidgly6pcneHDSc037d49NuLJ8BQoqxmJ/6Tu
         7nathPAL9DqAexNCJG+eBUnJgUcxlcP0ut62mGF9k2xH4lHE6toRJIjsG3j1IvPzNj3n
         fAdKG/icEKa+pCKti6V6io8EiWAJgPUzUm9rFjCzC1aLMbkiKPbaCtVLRngw6Txsk0gG
         mQ5tSc9yrA202aOoV4s49VCdAG1Emf5MhA8pIuRQKBNTiysFqDzwOvSSYlbNG1Q6Xx0g
         n+XvxDv5mX9q3vbzG5u0N/YGQJSQWTm7g4wD8EH6o2YLr9FiDFnTkvG3LgCEYwkIV1eN
         lejA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=u86d0cfu/yR9z6lB78BrTq31rY9Glku5O8dXV9MdLw8=;
        b=ZwQXxVnlKACatbKwwUA2075AXwJkOrFMgsqMqytOTzpwCUStysfISIZQECGx+24B4g
         pZO7fKEy9rXV/77W+ZmGXpsrrbk70b5X+Vu46b1DZqfB2KX0prPhRZ6eaXV4J8zXd5Sk
         FDmYM2VR58aK6MyGVS96IGuzWZHgzvSvX97PURpWN4xC+U2Zcklab8hEUC+RBzRrWyNx
         eqkf4Ao4t956VhWqXOUsdHGERuXr6B+YK2CwH4Vi5t1JaXM142Xhqx54D+uKGQbu5bkL
         M2lvU9KmdClRChOlkBisfYlro4R8V8C663lwAJSHMflweBtBKGxSjkeDTPGEFzND4Wn8
         UooA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u86d0cfu/yR9z6lB78BrTq31rY9Glku5O8dXV9MdLw8=;
        b=oA3OcH0FuQCmownB4JLWe4Y8BF7aw2OSEMPh2gxNZIc4ywU+hYD+SDdnKv2BoB4Z3c
         JsIKsxT9MCilM5a5KwrBO/MO2Bl6v/aFsLKnab0NLrjKjl+r0KJmxEsZGeMaRLnwXlVG
         5wd3c/KBLZkea/dwrI1SqYC6K4rQQPF9Al1QCDZR+OKZqsthxgtz9IXKepkVIcAv535t
         MsM7f1O6lSkRCQsR7b6C6prJTUj+1eb0i/x4sWrzp5HA59fyK+0tUwqHbPpr84shN0mL
         tc/VQMREHiXVe7itoS6Zlx1bhaggDSGsoVTBY5uQexdIE/tumJf5At9a2ROR7DKLR6R8
         7tWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u86d0cfu/yR9z6lB78BrTq31rY9Glku5O8dXV9MdLw8=;
        b=aARLw5U4R0WkWPo0AsROY1Y2gW8XNW557UumHDGH3MNzGOawSxg8RSst84quXYSY3r
         MylobCfb30Ix2oaeSOuvtDimADQITVT+1AmRaLrQaDu1nL4FVCPMLZos1+gwQfLqzL8/
         jeQ4skdt8MZDGV+s7TWthyWYAExVJPjuUR15ywcopiFMeeSSfyKSxTGAcXumcSfT1HlY
         9tf1OTRq+Y5NJioW6cUq5pwajYh915JU++YAywo1x8jGhn/wcWpP69HEDSpSO475c1j2
         8+akNEjrxs+x3hqYVIBHETV5K5HwTtAfsxlsjROqDHGoWo1n8o78lBV46XxDIesvT462
         P49g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUkF8lnQUlqpLyp5o9goGn7UgEEhel9CykAHG29ybO1b2racrLh
	SlpjVJB+Hkjl+dIyyMraZXw=
X-Google-Smtp-Source: APXvYqyJNWeiD0E5h6939YWlv/+y7aljYYONZkKdzcQhJjPAHnYaIUdJmnGTEve/wcPvni3ivGOntA==
X-Received: by 2002:a63:28f:: with SMTP id 137mr25023516pgc.301.1572393742974;
        Tue, 29 Oct 2019 17:02:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9357:: with SMTP id 23ls7264592pfn.12.gmail; Tue, 29 Oct
 2019 17:02:22 -0700 (PDT)
X-Received: by 2002:a63:a5b:: with SMTP id z27mr27356479pgk.416.1572393742290;
        Tue, 29 Oct 2019 17:02:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572393742; cv=none;
        d=google.com; s=arc-20160816;
        b=Z414YXpn7AHAVVirF0Y+BV/c9/W6VWLaPr7IXUjnmTAH/0DIsiUmwgBMesXCIrFhcr
         Ck8EVwQ4hGJlQ+G68zsdNn2DwrK7NrxPirfpaNprKx2UkfO4k7yv8Sbjk0XhqYtyUDWA
         S9kL2U/NjeJnWbotangSyyq1muTGtq5Cm9Hf/qADQeLjZlBcKvBPYs1FIE1RKKCNG+BE
         vkqOzRstKEbt6g55BVGCazx79/eDEhhDZtbNJMXK+XdxtBWwVmUVodVnUXcPwW16bM7K
         sW4zM7ihtHbHQjH37AO46quYiUExMoNDoOeotobb2Jqww+ULDvw6zPSCJ/Rvz6HU0m/K
         nKeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=QwpozRDk2UqZjTmBp/bwwzwrAGaqvwUSzYSOnZCFF80=;
        b=UEPIvcooRheyNWwszK1LIclzV7RlcAQ/Zpti5VxLYAjO52dRdg9oAEk3nHXWI3tJ7G
         t7nmPKnHGC8cwbUhSPDAQuOJPLpb67ZBMgcUIsSRIa3MyhqSlqy9deyED+3ABKBwnGFO
         qjZfiakSjE3kPPV3lTWcRMNJe1ROeuK2e7769f0ZdmMdjz2/0XjOL60a8qLx3mXqMJhX
         tPcFyU7cp+JnSrK99cg8h4K+CwJ84rSylNnq0CK7ztgzIXvMb7OWnc6s5HsUZxm1HmQB
         4a4ous3f1HUfj7xGDjG3qHaiHe4NeG0sNfqKgAJBhLWpGLve5oGEllUSblU8c0tGMVdH
         qWKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id t17si19677pgu.1.2019.10.29.17.02.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 17:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Oct 2019 17:02:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; 
   d="gz'50?scan'50,208,50";a="198524574"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 29 Oct 2019 17:02:19 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iPbRK-0007WP-VQ; Wed, 30 Oct 2019 08:02:18 +0800
Date: Wed, 30 Oct 2019 08:02:09 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ALSA: usb-audio: Fix memory leak in __snd_usbmidi_create
Message-ID: <201910300719.HWPKFSO9%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="534yczuavaadpezr"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--534yczuavaadpezr
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
In-Reply-To: <20191027221007.14317-1-navid.emamdoost@gmail.com>
References: <20191027221007.14317-1-navid.emamdoost@gmail.com>
TO: Navid Emamdoost <navid.emamdoost@gmail.com>
CC: emamd001@umn.edu, kjlu@umn.edu, smccaman@umn.edu, Navid Emamdoost <navi=
d.emamdoost@gmail.com>, Clemens Ladisch <clemens@ladisch.de>, Jaroslav Kyse=
la <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project=
.org, linux-kernel@vger.kernel.org, emamd001@umn.edu, kjlu@umn.edu, smccama=
n@umn.edu, Navid Emamdoost <navid.emamdoost@gmail.com>, Clemens Ladisch <cl=
emens@ladisch.de>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@su=
se.com>, alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org
CC: emamd001@umn.edu, kjlu@umn.edu, smccaman@umn.edu, Navid Emamdoost <navi=
d.emamdoost@gmail.com>, Clemens Ladisch <clemens@ladisch.de>, Jaroslav Kyse=
la <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project=
.org, linux-kernel@vger.kernel.org

Hi Navid,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on sound/for-next]
[cannot apply to v5.4-rc5 next-20191029]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp
improve the system. BTW, we also suggest to use '--base' option to specify =
the
base tree in git format-patch, please see https://stackoverflow.com/a/37406=
982]

url:    https://github.com/0day-ci/linux/commits/Navid-Emamdoost/ALSA-usb-a=
udio-Fix-memory-leak-in-__snd_usbmidi_create/20191030-054333
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git for=
-next
config: x86_64-rhel-7.6 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 7cd595df96d592=
9488063d8ff5cc3b5d800386da)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> sound/usb/midi.c:2488:1: warning: unused label 'exit' [-Wunused-label]
   exit:
   ^~~~~
   1 warning generated.

vim +/exit +2488 sound/usb/midi.c

f7881e5e8ef305 sound/usb/midi.c    Adam Goode        2014-08-05  2342 =20
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2343  /*
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2344   * C=
reates and registers everything needed for a MIDI streaming interface.
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2345   */
79289e24194a9d sound/usb/midi.c    Takashi Iwai      2016-01-11  2346  int =
__snd_usbmidi_create(struct snd_card *card,
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2347  			 =
struct usb_interface *iface,
d82af9f9aab69e sound/usb/usbmidi.c Clemens Ladisch   2009-11-16  2348  			 =
struct list_head *midi_list,
79289e24194a9d sound/usb/midi.c    Takashi Iwai      2016-01-11  2349  			 =
const struct snd_usb_audio_quirk *quirk,
79289e24194a9d sound/usb/midi.c    Takashi Iwai      2016-01-11  2350  			 =
unsigned int usb_id)
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2351  {
86e07d34658bb8 sound/usb/usbmidi.c Takashi Iwai      2005-11-17  2352  	str=
uct snd_usb_midi *umidi;
86e07d34658bb8 sound/usb/usbmidi.c Takashi Iwai      2005-11-17  2353  	str=
uct snd_usb_midi_endpoint_info endpoints[MIDI_MAX_ENDPOINTS];
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2354  	int=
 out_ports, in_ports;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2355  	int=
 i, err;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2356 =20
561b220a4dece1 sound/usb/usbmidi.c Takashi Iwai      2005-09-09  2357  	umi=
di =3D kzalloc(sizeof(*umidi), GFP_KERNEL);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2358  	if =
(!umidi)
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2359  		re=
turn -ENOMEM;
d82af9f9aab69e sound/usb/usbmidi.c Clemens Ladisch   2009-11-16  2360  	umi=
di->dev =3D interface_to_usbdev(iface);
d82af9f9aab69e sound/usb/usbmidi.c Clemens Ladisch   2009-11-16  2361  	umi=
di->card =3D card;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2362  	umi=
di->iface =3D iface;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2363  	umi=
di->quirk =3D quirk;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2364  	umi=
di->usb_protocol_ops =3D &snd_usbmidi_standard_ops;
c0792e00bc2dd1 sound/usb/usbmidi.c Takashi Iwai      2008-02-22  2365  	spi=
n_lock_init(&umidi->disc_lock);
59866da9e4ae54 sound/usb/midi.c    Takashi Iwai      2012-12-03  2366  	ini=
t_rwsem(&umidi->disc_rwsem);
96f61d9ade82f3 sound/usb/usbmidi.c Clemens Ladisch   2009-10-22  2367  	mut=
ex_init(&umidi->mutex);
79289e24194a9d sound/usb/midi.c    Takashi Iwai      2016-01-11  2368  	if =
(!usb_id)
79289e24194a9d sound/usb/midi.c    Takashi Iwai      2016-01-11  2369  		us=
b_id =3D USB_ID(le16_to_cpu(umidi->dev->descriptor.idVendor),
d82af9f9aab69e sound/usb/usbmidi.c Clemens Ladisch   2009-11-16  2370  			 =
      le16_to_cpu(umidi->dev->descriptor.idProduct));
79289e24194a9d sound/usb/midi.c    Takashi Iwai      2016-01-11  2371  	umi=
di->usb_id =3D usb_id;
a6162afa713554 sound/usb/midi.c    Kees Cook         2017-10-16  2372  	tim=
er_setup(&umidi->error_timer, snd_usbmidi_error_timer, 0);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2373 =20
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2374  	/* =
detect the endpoint(s) to use */
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2375  	mem=
set(endpoints, 0, sizeof(endpoints));
d1bda0455478a9 sound/usb/usbmidi.c Clemens Ladisch   2005-09-14  2376  	swi=
tch (quirk ? quirk->type : QUIRK_MIDI_STANDARD_INTERFACE) {
d1bda0455478a9 sound/usb/usbmidi.c Clemens Ladisch   2005-09-14  2377  	cas=
e QUIRK_MIDI_STANDARD_INTERFACE:
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2378  		er=
r =3D snd_usbmidi_get_ms_info(umidi, endpoints);
d82af9f9aab69e sound/usb/usbmidi.c Clemens Ladisch   2009-11-16  2379  		if=
 (umidi->usb_id =3D=3D USB_ID(0x0763, 0x0150)) /* M-Audio Uno */
d05cc104320210 sound/usb/usbmidi.c Clemens Ladisch   2007-05-07  2380  			u=
midi->usb_protocol_ops =3D
d05cc104320210 sound/usb/usbmidi.c Clemens Ladisch   2007-05-07  2381  				=
&snd_usbmidi_maudio_broken_running_status_ops;
d1bda0455478a9 sound/usb/usbmidi.c Clemens Ladisch   2005-09-14  2382  		br=
eak;
030a07e441296c sound/usb/usbmidi.c Karsten Wiese     2008-07-30  2383  	cas=
e QUIRK_MIDI_US122L:
030a07e441296c sound/usb/usbmidi.c Karsten Wiese     2008-07-30  2384  		um=
idi->usb_protocol_ops =3D &snd_usbmidi_122l_ops;
030a07e441296c sound/usb/usbmidi.c Karsten Wiese     2008-07-30  2385  		/*=
 fall through */
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2386  	cas=
e QUIRK_MIDI_FIXED_ENDPOINT:
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2387  		me=
mcpy(&endpoints[0], quirk->data,
86e07d34658bb8 sound/usb/usbmidi.c Takashi Iwai      2005-11-17  2388  		  =
     sizeof(struct snd_usb_midi_endpoint_info));
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2389  		er=
r =3D snd_usbmidi_detect_endpoints(umidi, &endpoints[0], 1);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2390  		br=
eak;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2391  	cas=
e QUIRK_MIDI_YAMAHA:
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2392  		er=
r =3D snd_usbmidi_detect_yamaha(umidi, &endpoints[0]);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2393  		br=
eak;
aafe77cc45a595 sound/usb/midi.c    Clemens Ladisch   2013-03-31  2394  	cas=
e QUIRK_MIDI_ROLAND:
aafe77cc45a595 sound/usb/midi.c    Clemens Ladisch   2013-03-31  2395  		er=
r =3D snd_usbmidi_detect_roland(umidi, &endpoints[0]);
aafe77cc45a595 sound/usb/midi.c    Clemens Ladisch   2013-03-31  2396  		br=
eak;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2397  	cas=
e QUIRK_MIDI_MIDIMAN:
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2398  		um=
idi->usb_protocol_ops =3D &snd_usbmidi_midiman_ops;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2399  		me=
mcpy(&endpoints[0], quirk->data,
86e07d34658bb8 sound/usb/usbmidi.c Takashi Iwai      2005-11-17  2400  		  =
     sizeof(struct snd_usb_midi_endpoint_info));
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2401  		er=
r =3D 0;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2402  		br=
eak;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2403  	cas=
e QUIRK_MIDI_NOVATION:
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2404  		um=
idi->usb_protocol_ops =3D &snd_usbmidi_novation_ops;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2405  		er=
r =3D snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2406  		br=
eak;
c7f572168fc484 sound/usb/midi.c    Clemens Ladisch   2010-10-22  2407  	cas=
e QUIRK_MIDI_RAW_BYTES:
6155aff84b98b2 sound/usb/usbmidi.c Clemens Ladisch   2005-07-04  2408  		um=
idi->usb_protocol_ops =3D &snd_usbmidi_raw_ops;
55de5ef970c680 sound/usb/usbmidi.c Clemens Ladisch   2009-05-27  2409  		/*
55de5ef970c680 sound/usb/usbmidi.c Clemens Ladisch   2009-05-27  2410  		 *=
 Interface 1 contains isochronous endpoints, but with the same
55de5ef970c680 sound/usb/usbmidi.c Clemens Ladisch   2009-05-27  2411  		 *=
 numbers as in interface 0.  Since it is interface 1 that the
55de5ef970c680 sound/usb/usbmidi.c Clemens Ladisch   2009-05-27  2412  		 *=
 USB core has most recently seen, these descriptors are now
55de5ef970c680 sound/usb/usbmidi.c Clemens Ladisch   2009-05-27  2413  		 *=
 associated with the endpoint numbers.  This will foul up our
55de5ef970c680 sound/usb/usbmidi.c Clemens Ladisch   2009-05-27  2414  		 *=
 attempts to submit bulk/interrupt URBs to the endpoints in
55de5ef970c680 sound/usb/usbmidi.c Clemens Ladisch   2009-05-27  2415  		 *=
 interface 0, so we have to make sure that the USB core looks
55de5ef970c680 sound/usb/usbmidi.c Clemens Ladisch   2009-05-27  2416  		 *=
 again at interface 0 by calling usb_set_interface() on it.
55de5ef970c680 sound/usb/usbmidi.c Clemens Ladisch   2009-05-27  2417  		 *=
/
c7f572168fc484 sound/usb/midi.c    Clemens Ladisch   2010-10-22  2418  		if=
 (umidi->usb_id =3D=3D USB_ID(0x07fd, 0x0001)) /* MOTU Fastlane */
d82af9f9aab69e sound/usb/usbmidi.c Clemens Ladisch   2009-11-16  2419  			u=
sb_set_interface(umidi->dev, 0, 0);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2420  		er=
r =3D snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2421  		br=
eak;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2422  	cas=
e QUIRK_MIDI_EMAGIC:
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2423  		um=
idi->usb_protocol_ops =3D &snd_usbmidi_emagic_ops;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2424  		me=
mcpy(&endpoints[0], quirk->data,
86e07d34658bb8 sound/usb/usbmidi.c Takashi Iwai      2005-11-17  2425  		  =
     sizeof(struct snd_usb_midi_endpoint_info));
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2426  		er=
r =3D snd_usbmidi_detect_endpoints(umidi, &endpoints[0], 1);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2427  		br=
eak;
cc7a59bd8dcee9 sound/usb/usbmidi.c Clemens Ladisch   2006-02-07  2428  	cas=
e QUIRK_MIDI_CME:
61870aed229519 sound/usb/usbmidi.c Clemens Ladisch   2007-08-16  2429  		um=
idi->usb_protocol_ops =3D &snd_usbmidi_cme_ops;
f38275fe994c33 sound/usb/usbmidi.c Clemens Ladisch   2005-07-25  2430  		er=
r =3D snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);
f38275fe994c33 sound/usb/usbmidi.c Clemens Ladisch   2005-07-25  2431  		br=
eak;
4434ade8c9334a sound/usb/midi.c    Krzysztof Foltman 2010-05-20  2432  	cas=
e QUIRK_MIDI_AKAI:
4434ade8c9334a sound/usb/midi.c    Krzysztof Foltman 2010-05-20  2433  		um=
idi->usb_protocol_ops =3D &snd_usbmidi_akai_ops;
4434ade8c9334a sound/usb/midi.c    Krzysztof Foltman 2010-05-20  2434  		er=
r =3D snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);
4434ade8c9334a sound/usb/midi.c    Krzysztof Foltman 2010-05-20  2435  		/*=
 endpoint 1 is input-only */
4434ade8c9334a sound/usb/midi.c    Krzysztof Foltman 2010-05-20  2436  		en=
dpoints[1].out_cables =3D 0;
4434ade8c9334a sound/usb/midi.c    Krzysztof Foltman 2010-05-20  2437  		br=
eak;
1ef0e0a05345b7 sound/usb/midi.c    Kristian Amlie    2011-08-26  2438  	cas=
e QUIRK_MIDI_FTDI:
1ef0e0a05345b7 sound/usb/midi.c    Kristian Amlie    2011-08-26  2439  		um=
idi->usb_protocol_ops =3D &snd_usbmidi_ftdi_ops;
1ef0e0a05345b7 sound/usb/midi.c    Kristian Amlie    2011-08-26  2440 =20
1ef0e0a05345b7 sound/usb/midi.c    Kristian Amlie    2011-08-26  2441  		/*=
 set baud rate to 31250 (48 MHz / 16 / 96) */
1ef0e0a05345b7 sound/usb/midi.c    Kristian Amlie    2011-08-26  2442  		er=
r =3D usb_control_msg(umidi->dev, usb_sndctrlpipe(umidi->dev, 0),
1ef0e0a05345b7 sound/usb/midi.c    Kristian Amlie    2011-08-26  2443  				=
      3, 0x40, 0x60, 0, NULL, 0, 1000);
1ef0e0a05345b7 sound/usb/midi.c    Kristian Amlie    2011-08-26  2444  		if=
 (err < 0)
1ef0e0a05345b7 sound/usb/midi.c    Kristian Amlie    2011-08-26  2445  			b=
reak;
1ef0e0a05345b7 sound/usb/midi.c    Kristian Amlie    2011-08-26  2446 =20
1ca8b201309d84 sound/usb/midi.c    Clemens Ladisch   2015-11-15  2447  		er=
r =3D snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);
1ca8b201309d84 sound/usb/midi.c    Clemens Ladisch   2015-11-15  2448  		br=
eak;
1ca8b201309d84 sound/usb/midi.c    Clemens Ladisch   2015-11-15  2449  	cas=
e QUIRK_MIDI_CH345:
a91e627e3f0ed8 sound/usb/midi.c    Clemens Ladisch   2015-11-15  2450  		um=
idi->usb_protocol_ops =3D &snd_usbmidi_ch345_broken_sysex_ops;
1ef0e0a05345b7 sound/usb/midi.c    Kristian Amlie    2011-08-26  2451  		er=
r =3D snd_usbmidi_detect_per_port_endpoints(umidi, endpoints);
1ef0e0a05345b7 sound/usb/midi.c    Kristian Amlie    2011-08-26  2452  		br=
eak;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2453  	def=
ault:
a509574e5ea7b6 sound/usb/midi.c    Adam Goode        2014-08-05  2454  		de=
v_err(&umidi->dev->dev, "invalid quirk type %d\n",
a509574e5ea7b6 sound/usb/midi.c    Adam Goode        2014-08-05  2455  			q=
uirk->type);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2456  		er=
r =3D -ENXIO;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2457  		br=
eak;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2458  	}
731209cc041779 sound/usb/midi.c    Markus Elfring    2017-08-23  2459  	if =
(err < 0)
731209cc041779 sound/usb/midi.c    Markus Elfring    2017-08-23  2460  		go=
to free_midi;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2461 =20
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2462  	/* =
create rawmidi device */
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2463  	out=
_ports =3D 0;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2464  	in_=
ports =3D 0;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2465  	for=
 (i =3D 0; i < MIDI_MAX_ENDPOINTS; ++i) {
fbc543915ffb8e sound/usb/usbmidi.c Akinobu Mita      2009-11-20  2466  		ou=
t_ports +=3D hweight16(endpoints[i].out_cables);
fbc543915ffb8e sound/usb/usbmidi.c Akinobu Mita      2009-11-20  2467  		in=
_ports +=3D hweight16(endpoints[i].in_cables);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2468  	}
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2469  	err=
 =3D snd_usbmidi_create_rawmidi(umidi, out_ports, in_ports);
731209cc041779 sound/usb/midi.c    Markus Elfring    2017-08-23  2470  	if =
(err < 0)
731209cc041779 sound/usb/midi.c    Markus Elfring    2017-08-23  2471  		go=
to free_midi;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2472 =20
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2473  	/* =
create endpoint/port structures */
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2474  	if =
(quirk && quirk->type =3D=3D QUIRK_MIDI_MIDIMAN)
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2475  		er=
r =3D snd_usbmidi_create_endpoints_midiman(umidi, &endpoints[0]);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2476  	els=
e
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2477  		er=
r =3D snd_usbmidi_create_endpoints(umidi, endpoints);
731209cc041779 sound/usb/midi.c    Markus Elfring    2017-08-23  2478  	if =
(err < 0)
940c34053882a5 sound/usb/midi.c    Navid Emamdoost   2019-10-27  2479  		go=
to free_midi;
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2480 =20
cbc200bca4b51a sound/usb/midi.c    Clemens Ladisch   2013-04-15  2481  	usb=
_autopm_get_interface_no_resume(umidi->iface);
cbc200bca4b51a sound/usb/midi.c    Clemens Ladisch   2013-04-15  2482 =20
d82af9f9aab69e sound/usb/usbmidi.c Clemens Ladisch   2009-11-16  2483  	lis=
t_add_tail(&umidi->list, midi_list);
^1da177e4c3f41 sound/usb/usbmidi.c Linus Torvalds    2005-04-16  2484  	ret=
urn 0;
731209cc041779 sound/usb/midi.c    Markus Elfring    2017-08-23  2485 =20
731209cc041779 sound/usb/midi.c    Markus Elfring    2017-08-23  2486  free=
_midi:
731209cc041779 sound/usb/midi.c    Markus Elfring    2017-08-23  2487  	kfr=
ee(umidi);
731209cc041779 sound/usb/midi.c    Markus Elfring    2017-08-23 @2488  exit=
:

:::::: The code at line 2488 was first introduced by commit
:::::: 731209cc041779faac963578d901cb1caacbd738 ALSA: usb-midi: Use common =
error handling code in __snd_usbmidi_create()

:::::: TO: Markus Elfring <elfring@users.sourceforge.net>
:::::: CC: Takashi Iwai <tiwai@suse.de>

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201910300719.HWPKFSO9%25lkp%40intel.com.

--534yczuavaadpezr
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--534yczuavaadpezr--
