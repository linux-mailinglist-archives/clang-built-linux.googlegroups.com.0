Return-Path: <clang-built-linux+bncBCMIT47M74ARBTV4Q32AKGQEV5DEOYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 2734B197594
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 09:22:55 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id a14sf14802990edx.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 00:22:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585552975; cv=pass;
        d=google.com; s=arc-20160816;
        b=D9bTaSoUDfvelj8H86cDJf71vF5iPt6ZnIbcn0kJYMqdXPCzzcIRKYPBWY2CzOlsPK
         A6ghJwUT0JlfrQWRkDXnzJwWTC5wcE4LZuBekSrMDRNAB/bvbUiE2hllZkPD43cYuyxe
         9S28NOx3yawa6A/21/37X52GBtWN6v9L02dD5fYZ68KPSrI9A1b7FL+KmbvCZ8zDMBBA
         gDyMIH0X5Z+voM2EAYX/hZR4EZWhm3ORm5obkhBmKSTd7RVOXaT4X+irbouqPFUwSOm0
         VtjgTghKR94wcOHXchvyXsszx63CTfYJrVXWSito2cXXnQ1kJoJkseZarIwoqCIsIpD8
         +5Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=3r6RPCxLlsyw/OJsHj4aQRp4NW2bm0xR08TzCj73kns=;
        b=dGG1yo1ANLE1ZCQRa64OwPVIqbLONH/HfpQkIEIuDb+FF3P0BGkuW5fhaCcG+uKDAT
         cLtKo6JdcQ4muCB+Ia64IFFIlaLpr3EDHBn6Z2n419Tbg9Zur60ESYkE9xY0uiLHLvhj
         b6kwfe125NxHQ2TL8Dp2J9VJQInv72qD4RU+nKsQFd1WFkUFe65V0YGZ8S6llvyNITGl
         gQP1SSqupjTS5iVeBfE5kDVGxj4uDDeNW/H7Ek0wD7Y7246WWxiVoApOv/ozBW3KvS5r
         bNaudc088gIzYS/5R4tnmh8eO59zLlqwlIBAKTHtkiAxdL2YXek9QAqc00RY5bvzvnlv
         +bXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GAi4HKP0;
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3r6RPCxLlsyw/OJsHj4aQRp4NW2bm0xR08TzCj73kns=;
        b=p5w0ID5Xx+RXebC0jE+KiPFsfgy5nKNW0GWYI4RBMT+3UEwVmBNDfQQxQ3B5E0aGYj
         K3mvqPc7AzPJMmnen9HCrqQHD3xN102ynwzFrJkmDeyAOiDlqLAk+U4VYQyJJBXly7TU
         vNfS/ewE55XYBV99eFZlC0Mia+Qtk9tjGPhjXO3rmeDGFFQpLMnRi8e0nXSqhBjBmMHo
         j1ktVu9JRcenOfxPMFkGHGvQpxbpxQff608j5UaOmpxl6Okhl5W54EGx9thaVx33Zejz
         BFAxcnruw7qYYyLW7DjaLr7mAXRJpXFSeajG19/dt2ykt+XO5G6BKNIzMXzizr7ilVah
         l2dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3r6RPCxLlsyw/OJsHj4aQRp4NW2bm0xR08TzCj73kns=;
        b=uCysXPPOnDpbIDXTaPiQnqxlup4KJ5GWV+0cgBSSqV0sEEXze5mInnWzhHmpcvj5fS
         IIInxmg78IIO5a74uvy6Ae8ycgn3AadfnBlwvUAgNV4207BM+z97zLboTmG02Quf/uFn
         VuEYxyhGbK2amTcG/2Q9wzkv8PG2jQgjJfmkf2knh0nJlbsO2r+yeyoTdYVtEvzxzNB7
         axImYAVVVwb385pyUI9H+cPEXGPiycfWT+oQkz9zu3/QqDeCiNp/JQRrlPAg/CN+5pHs
         /0Zc6ht5po15F/Xp4lQrX5VKGM3dg652xKvLo++1KTpjHjCFsoSR79AO+0yyRyLFLIFO
         cAjQ==
X-Gm-Message-State: ANhLgQ35zfOLZ/C+R6smcItLoI+u3e7tMJ1v9+hcOcrBbnv0hH3DZN1x
	eeVpSHIY6v4H/rfgfXppcj4=
X-Google-Smtp-Source: ADFU+vvlkdU05v7nbSlyBk0p5Kcc9W0VNkqPYqGvq6p1Vrgh5tbtrAxp4MkpbDTBEP6MaUu6MdCMAw==
X-Received: by 2002:aa7:d999:: with SMTP id u25mr10449991eds.210.1585552974798;
        Mon, 30 Mar 2020 00:22:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8ad5:: with SMTP id k21ls12936980edk.0.gmail; Mon, 30
 Mar 2020 00:22:54 -0700 (PDT)
X-Received: by 2002:a50:8a03:: with SMTP id i3mr10298775edi.121.1585552974246;
        Mon, 30 Mar 2020 00:22:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585552974; cv=none;
        d=google.com; s=arc-20160816;
        b=Rv23/QKKRid/m9vasRRALPx1tJFncS/X2KOPZ9bOBICQB83OatE7Gu+vei/Cu7HCgM
         JGl44qFoyszAw67CGnDG8admCYKTWUPpJ7+a93HjDYCiTgVZU5SENa4Gc19fK2DYeJjK
         QGV2TancKfLOVUQw9VakLUCWKA2VJc7kJCflsEQ0yqTx854afxTqj1bYZA21gMEGiT2M
         klWB2NatOOTqwBOV0icguxRBku3ubW1GoAwbETZS8YIwx9xy7R+1oC9cdkzzfs4Tl0OG
         NhfbNlzVhEiQ9hiO8ZOWOPAMZgd1A95RIMO1JGLJZI3ffOE9ciWOhfcKx2NgBpCQfkr9
         zcRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=CFQXwJJrIXlSAMWy0ffSxEkaMxtOijfEu4eBTtwWKd8=;
        b=OFw54tO6Q4iCJPTYqqg9gX+2U/QEew3rb5433ENLmyBqr8MkaspcwdukIvOxXZTz9a
         w6DTSwTGlDg6hZ2I62InYfFnEGIWFm/Yz/Gz+GXPMbWPX/K+Sw0ooivrK+8rApw69LiZ
         WCtYFujjg+uu3VrUw+t1iWsKRqFnQN52cbqX5A/NpKXDFHpozWCXa2rBLeXLk5x8W8q3
         B2tignTCAl1yry6/Tb0yd4ylhNeyaHqON2A+LS4IeJA7mePpeMVgtAf+VLUGz2s+H8+k
         r5UDHiWcGAcqldLBDsfoFz6n236Uj6PLVcBpFnyBxKFh15eeKdBaK3fx/7UzL9+TO+3A
         qUlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GAi4HKP0;
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id w13si550097edv.2.2020.03.30.00.22.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 00:22:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id r7so9250390ljg.13
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 00:22:54 -0700 (PDT)
X-Received: by 2002:a2e:9acd:: with SMTP id p13mr6006808ljj.131.1585552973499;
        Mon, 30 Mar 2020 00:22:53 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
        by smtp.gmail.com with ESMTPSA id k4sm3734167lfo.47.2020.03.30.00.22.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 30 Mar 2020 00:22:52 -0700 (PDT)
Sender: Felipe Balbi <balbif@gmail.com>
From: Felipe Balbi <balbi@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Ashwini Pahuja <ashwini.linux@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH RESEND] usb: gadget: udc: bdc: Remove unnecessary NULL checks in bdc_req_complete
In-Reply-To: <20200330060805.GA107017@kroah.com>
References: <87zhc0j2qi.fsf@kernel.org> <20200329011246.27599-1-natechancellor@gmail.com> <871rpb4nd1.fsf@kernel.org> <20200329144703.GA9720@ubuntu-m2-xlarge-x86> <87mu7zdsc7.fsf@kernel.org> <20200330060805.GA107017@kroah.com>
Date: Mon, 30 Mar 2020 10:22:48 +0300
Message-ID: <87pncu2to7.fsf@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
X-Original-Sender: balbif@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GAi4HKP0;       spf=pass
 (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::242 as
 permitted sender) smtp.mailfrom=balbif@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

--=-=-=
Content-Type: text/plain; charset="UTF-8"

Hi,

Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
>> >> > When building with Clang + -Wtautological-pointer-compare:
>> >> >
>> >> > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of
>> >> > address of 'req->queue' equal to a null pointer is always false
>> >> > [-Wtautological-pointer-compare]
>> >> >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>> >> >                              ~~~~~^~~~~    ~~~~
>> >> > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of
>> >> > address of 'req->usb_req' equal to a null pointer is always false
>> >> > [-Wtautological-pointer-compare]
>> >> >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>> >> >                                                     ~~~~~^~~~~~~    ~~~~
>> >> > 2 warnings generated.
>> >> >
>> >> > As it notes, these statements will always evaluate to false so remove
>> >> > them.
>> >> >
>> >> > Fixes: efed421a94e6 ("usb: gadget: Add UDC driver for Broadcom USB3.0 device controller IP BDC")
>> >> > Link: https://github.com/ClangBuiltLinux/linux/issues/749
>> >> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> 
>> >> It's now in my queue for v5.8. It doesn't really look like a bug fix, so
>> >> it's not going in during v5.7-rc
>> >> 
>> >> -- 
>> >> balbi
>> >
>> > Thank you for picking it up. It would be nice to see it in 5.7 since
>> > we're enabling this warning and this is one of two outstanding
>> > instances in -next and the other one's patch has been picked up plus the
>> > patch itself is rather benign. Not to mention that I did send this patch
>> > back in October. However, when it is merged into Linus' tree is
>> > ultimately your call so I won't argue as long as it gets there
>> > eventually.
>> 
>> If Greg's okay with this patch going in during v5.7-rc, I can send it as
>> a fix, no worries. Greg?
>
> Yes, clang build warnings fixes are valid fixes for the -rc period, and
> I take them into stable where needed as well.

Thanks for confirming, Greg. I'll move the commit to my testing/fixes

-- 
balbi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87pncu2to7.fsf%40kernel.org.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl6BnkgACgkQzL64meEa
mQZTfBAAsICVocPOV4FHNqbsoY4Tx3EZ+KwylNUGsG5xO7kz0niqiJxEPn02IDEw
jkdJarhk62P68V+U11jxFyAj7Y/O1jUzpbn+NfwOZNv9q1i6gzyQNcrwfOK/zsL7
eBFOeamGdMbERRKEizBWbwhS8aRtf9F2lElrcKwkiQRkWZSnwh4vpOzELOzjeSSG
IbSD9KlTuIZIUcb5TGNKpidb3KuK/3byH1OwJRB9S4JuEIDZRKrMOR738tSFrn+4
X7H26jDX+bhD6rxdx5PxRdMqLi7HxLLM4w2Ne3WHDGtCip8SdMzUn+E0RiPRpzAn
OuzOlitJN2qI/e/Zr2d97RAYhDiZxHR2RCj2ZmjCyFkGUCXjKLiFf3WaY3TLfFE6
/po0QSqQ7iZWVLw2nby6QSzQfxDTm4xvtkyRUfjHg2EzDwAFZ42SndPHW8wFsod2
p0sYAPGK5SWbfTW4uRGpOO5R12CrmI9RI2f7c8wAHY3yVzO3GyrzhXec/OxcHpua
QKhF0ems5MrRyMokZU5GT4Rxxd0wrHizphp0/XIjzYfEiKPQ1thzpLAVDfIsy4RV
XcuMuy/Jg0I2/e6TjvX4jd5Z/sJMOmekl5B5qJUo3/cd1NK75oBgmoT2SnKnq2TV
Uxbqg9hiubkOg1awIybALVoBbANeFV2+n5wphJzOtKHHc0aROuQ=
=Dde9
-----END PGP SIGNATURE-----
--=-=-=--
