Return-Path: <clang-built-linux+bncBDY3NC743AGBBLG7XT6AKGQEQRO4Q7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0A9294249
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 20:42:53 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id w189sf2652875qkd.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 11:42:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603219372; cv=pass;
        d=google.com; s=arc-20160816;
        b=pfi6LJJ8HkX686piK7f6QTQ/6oNEIXuWLup6W2QHdcJ+GyvVqmhl3nZFxygeepU2Xf
         cSqB0SuWL1j1t5dTeq7IEYOk2uUngHSwW9rsorsZ7l4nsUqFMAm9ib2Qr4lEGRG5ED3c
         2Hc15xy2XXcNbCcbXCo3cKvfKxrbc9l6irAbHF/sbJUK2OPDOHi749CToW4yO457kccg
         vaQW2/4jAuSXkRpDXNYeVAiN2CSMs75Fn4TBRvHi2BkZzzuZJQJNmQ/aiIzaZdWl0Eq9
         FEiVit/IepaYj54E8C0XK/nLIXxqjWdHf1Tz4TZAWyeslXoG+5ERUEW7fk4ruMh6bLnO
         H6TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=NehuuinhYIugJf4d+jWHKpnVkv6LzFSPdWLuhLLk2GY=;
        b=s792pCU5eg9lUV8cHmVWtVr2P2Gb3wRLpbAL8HiYfC/Mt4pNwqKMerY8EdW0VXPLoT
         reZjaB1+55kT1KMuIlSSRd3+iUXbKtZdYrUUsz429tkkMB5LTGbIPFzvI6yr5CWGcFWC
         KdfXkBUt7d84WJvk8qn38tQ6ytQG0+aoSlx9zsGDmZvmTGqZVWTdtBNyJ9e7XhELrzpY
         If4OvQ8Zsu4XNgaRb0D4TuUYv+dogxIhrxJZal0ajz1FUBpVQYFItT0Y0P9HMV0qzxnX
         Jjyp6VpnN8fZbMAjvwdc1+Hzq6gBVlXv34DZXOghd5n9zKxkZKUNmEc/FltkAEZjLx4a
         YppA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.238 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NehuuinhYIugJf4d+jWHKpnVkv6LzFSPdWLuhLLk2GY=;
        b=pF+0qOtPjNtyZlKe89A6+g6nAr+x1pNvqfeT9Q4kbzUrG0gYTth7nBG/8BoJJaqKhP
         sl21UaG3gttH+qqszhBk3pDPeH01/sbIY76OmzQ5carUARSJeeYmEuPXacGp2l+AW3XK
         Y7tMUpQnhTcQnCBZ5g94+7EbMMLUExP3TtZgMFqfOKkEIT6gGo0yxy/6GYkZsPJ4NrCy
         i7izWnalbf00JZ+ZgEe6hlCgpESekpJhoKe5gBJaGyVIOXF7VPRFBygiA/CxfIlDs3Xp
         bYSyXbIzAM/0TZrl34VommkqpDBFjbZC+KdWm3Cnm03Ahgk9slOXkd28zKFfwfID9CjS
         PB7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NehuuinhYIugJf4d+jWHKpnVkv6LzFSPdWLuhLLk2GY=;
        b=FwI+wbiMr0k87SbPQwAcRU0KB9MPuPnrrxVhzQxbbdFKM59ZRq+V3azgzFXaU2OcLN
         7qoa0e2j5RO255feuyKiuT9hjrk+tSmEYGVE8dafojhIuA3+o5/fsbQtYb4/g6ymDYhz
         5rF+ln6h8qRrcOQpQRERAXKZS2NhiaVE1pLcLhVBbLrJUT352P5piz+bErrt9ZorbbwM
         hjdgeImkYbp9oSWp6DUsAmtPyHcE0YU+Ne6X9N4hd4ChT5LGS8/8vf8TYY0kjNuSbHSP
         +aur9eRVCXGpKgRsxrWK2EQReYi5GINQz8QIXVHBMFZszI1Pkv360myyQuZDBFHSn2tK
         vXtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qMhMLCr377JFyom/LURo+IjT0lPWvjv21yjfaUxFVeLVRDFtz
	lWxiQbRMfYmdKlXDHgvNaVE=
X-Google-Smtp-Source: ABdhPJy2tZ1pLYcncYsHwbnAvyVKiFt7EbVQTAsZXTrzMJf8KphpzlaBZ1/YqCWKk5lo/RHs7jwc2Q==
X-Received: by 2002:a37:9b42:: with SMTP id d63mr4077489qke.49.1603219372640;
        Tue, 20 Oct 2020 11:42:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3ecd:: with SMTP id o13ls1038287qtf.6.gmail; Tue, 20 Oct
 2020 11:42:52 -0700 (PDT)
X-Received: by 2002:ac8:1c6d:: with SMTP id j42mr3860173qtk.29.1603219372122;
        Tue, 20 Oct 2020 11:42:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603219372; cv=none;
        d=google.com; s=arc-20160816;
        b=ta+4M0hBS9JCEK7afczMcKBnF1bWSWw5wWAmuXSvZLWWL6wCc8uKINpgXm6UDn+b5t
         m1xStpAkyhT35BolgBf+cK0zOoUd/6Ve+MArDenCt7vEsrH3+871WI7nS0xOS8AVqwYc
         amQkttBAO/mC8WamCFQNG6F0VAJyZViADDxf1gqJxZcRsxmpg0p1/D5YMQ3i3IL+ZNBN
         WrQzYwj3gtYs4FKTLf1pWKaT6zpBUlYGGVcSx0IHgi3Pe2dCF7EbOyDxtxAdm0qAu4Sn
         U+KCRsFDKb5DGqltcN6LCRYvPS79r2Swgz8iD5KExxk12AHY99VI1bD7Zs5lfYREeWMm
         Xp7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=L7f8gxzmHz1zuppy2OCatGDIIf9704YunK91Oxegy1A=;
        b=pald0TSrht3rxcwu1Wy46cab430+oharnsOf/Gh3YnCI/jIV6/LNYVKRSQBtkjJlP/
         v4O8/6lWGErp9ejuy9isP5T90OTgLgf9/nbtaW+KQlk3umY/fgNQzvL7d4LKxRqdy0uW
         TzUIjpxcaW/cKl74Yf9lLCzf6RoW/iSzVnutVP2j1VRzG0q1pp0vPaPSAvIVgwCB1iYY
         a6f9LGCmDlb443NMp7cYUr3Tz//700kNEucy/YVJy/uaXFU51h/BW/6oGpcxvEg0CJKp
         Kwlzhgvm2nHttHR4VUlVBUQ/A+NvF/ht+N1t3jBEzPaymh7aXsk2mJvchPFBHWmcx3p8
         U0aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.238 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0238.hostedemail.com. [216.40.44.238])
        by gmr-mx.google.com with ESMTPS id h18si181470qkg.3.2020.10.20.11.42.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 11:42:52 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.238 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.238;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 43FA51260;
	Tue, 20 Oct 2020 18:42:51 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1434:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2525:2553:2560:2563:2682:2685:2731:2828:2859:2911:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4425:5007:6742:6743:7576:7903:8957:9025:10004:10400:10450:10455:10848:11232:11658:11914:12043:12295:12297:12663:12740:12760:12895:13153:13228:13439:14181:14659:14721:19904:19999:21080:21451:21627:21939:21990:30012:30034:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: humor84_3a06a8527241
X-Filterd-Recvd-Size: 4943
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf17.hostedemail.com (Postfix) with ESMTPA;
	Tue, 20 Oct 2020 18:42:43 +0000 (UTC)
Message-ID: <3bc5c2e3b3edc22a4d167ec807ecdaaf8dcda76d.camel@perches.com>
Subject: Re: [RFC] treewide: cleanup unreachable breaks
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Tom Rix <trix@redhat.com>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-edac@vger.kernel.org, 
 linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org, 
 xen-devel@lists.xenproject.org, linux-block@vger.kernel.org, 
 openipmi-developer@lists.sourceforge.net, "open list:HARDWARE RANDOM NUMBER
 GENERATOR CORE" <linux-crypto@vger.kernel.org>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>,  linux-power@fi.rohmeurope.com,
 linux-gpio@vger.kernel.org, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 nouveau@lists.freedesktop.org, virtualization@lists.linux-foundation.org, 
 spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org, 
 linux-amlogic@lists.infradead.org,
 industrypack-devel@lists.sourceforge.net,  linux-media@vger.kernel.org,
 MPT-FusionLinux.pdl@broadcom.com,  linux-scsi@vger.kernel.org,
 linux-mtd@lists.infradead.org,  linux-can@vger.kernel.org, Network
 Development <netdev@vger.kernel.org>,  intel-wired-lan@lists.osuosl.org,
 ath10k@lists.infradead.org, linux-wireless
 <linux-wireless@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
  linux-nfc@lists.01.org, linux-nvdimm <linux-nvdimm@lists.01.org>, 
 linux-pci@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 platform-driver-x86@vger.kernel.org, patches@opensource.cirrus.com, 
 storagedev@microchip.com, devel@driverdev.osuosl.org, 
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org, 
 usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org, 
 ocfs2-devel@oss.oracle.com, bpf <bpf@vger.kernel.org>, 
 linux-integrity@vger.kernel.org, linux-security-module@vger.kernel.org, 
 keyrings@vger.kernel.org, alsa-devel@alsa-project.org, clang-built-linux
 <clang-built-linux@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>,
  George Burgess <gbiv@google.com>
Date: Tue, 20 Oct 2020 11:42:42 -0700
In-Reply-To: <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
References: <20201017160928.12698-1-trix@redhat.com>
	 <20201018054332.GB593954@kroah.com>
	 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.238 is neither permitted nor denied by best guess
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

On Mon, 2020-10-19 at 12:42 -0700, Nick Desaulniers wrote:
> On Sat, Oct 17, 2020 at 10:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > > From: Tom Rix <trix@redhat.com>
> > > 
> > > This is a upcoming change to clean up a new warning treewide.
> > > I am wondering if the change could be one mega patch (see below) or
> > > normal patch per file about 100 patches or somewhere half way by collecting
> > > early acks.
> > 
> > Please break it up into one-patch-per-subsystem, like normal, and get it
> > merged that way.
> > 
> > Sending us a patch, without even a diffstat to review, isn't going to
> > get you very far...
> 
> Tom,
> If you're able to automate this cleanup, I suggest checking in a
> script that can be run on a directory.  Then for each subsystem you
> can say in your commit "I ran scripts/fix_whatever.py on this subdir."
>  Then others can help you drive the tree wide cleanup.  Then we can
> enable -Wunreachable-code-break either by default, or W=2 right now
> might be a good idea.
> 
> Ah, George (gbiv@, cc'ed), did an analysis recently of
> `-Wunreachable-code-loop-increment`, `-Wunreachable-code-break`, and
> `-Wunreachable-code-return` for Android userspace.  From the review:
> ```
> Spoilers: of these, it seems useful to turn on
> -Wunreachable-code-loop-increment and -Wunreachable-code-return by
> default for Android
> ...
> While these conventions about always having break arguably became
> obsolete when we enabled -Wfallthrough, my sample turned up zero
> potential bugs caught by this warning, and we'd need to put a lot of
> effort into getting a clean tree. So this warning doesn't seem to be
> worth it.
> ```
> Looks like there's an order of magnitude of `-Wunreachable-code-break`
> than the other two.
> 
> We probably should add all 3 to W=2 builds (wrapped in cc-option).
> I've filed https://github.com/ClangBuiltLinux/linux/issues/1180 to
> follow up on.

I suggest using W=1 as people that are doing cleanups
generally use that and not W=123 or any other style.

Every other use of W= is still quite noisy and these
code warnings are relatively trivially to fix up.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3bc5c2e3b3edc22a4d167ec807ecdaaf8dcda76d.camel%40perches.com.
