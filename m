Return-Path: <clang-built-linux+bncBDPZFQ463EFRB3H42LWAKGQECKOIUOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 866F2C8C6D
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 17:12:45 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id n2sf2367313vsr.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 08:12:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570029164; cv=pass;
        d=google.com; s=arc-20160816;
        b=xh03Zx9YN1enplrsoOm5ygvEetd8Y2h4VcqJm9D9XAVX97CHC+e9GbmNUOecRO3b+I
         Zdx2BnUBw8JPOTP6o/fPuPRqE6l3lit8ygd/U+Bfd8rEBjcr/e8/Vic+k+4nM8Dr0OmP
         SeDh1xonCeEIbq6NBae9UUckWUVgbBKKpO4Pg8riEhyALiZ1bnvsF/VABG3s8ynD6+ub
         O9QZ3HrEaYX+2+k2bXyDxfpgIiCDsPRNNBJNF+HKJELnuqcZDpUdHAtuCQ1Ps/4UZNe/
         xVV1WNTk8kdzlCTR5Ez70UtwXKrlkNZwxA5EV1nHCwbSWK4yltqkNgh2G9M0RrUtdzIg
         FRpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=axTIz7ltM8cwrtgDAvrTnSscTjPZUC/+lnRRrrByK8E=;
        b=HDELptHbahCUD6hxRzClGUq5kSpbsoOztryaGiNW2kFzu27j91Rx2EZSsOMXUyeceK
         kIcb6jdt/ssFyKydwgJOMeWKkaiIlaV4/xYcA8YwmL4GBqLi8TYeKkovIfLCsxxU81NR
         QyFK7vmlzmxvBeXlwjuAJyGAFCw2WucIEVMAve6sSD6xhk7WZuepPSqHeSxYaNnrIJkg
         s+T/f5SMBjspihMJVWD41t8V7umK03RwP2Oep7tE1BkYrlprvl8dnXYsemC+MbqV7FZB
         +jtAG6wTMR7kcVzjWmEr8Kp2lf5oPo4tKCZYR0gRiyfUWXy5QQC+lRqdXeKOLYBCeeQz
         Pc3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nLE1/iHW";
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=axTIz7ltM8cwrtgDAvrTnSscTjPZUC/+lnRRrrByK8E=;
        b=HczW1yWlopwnyO1URWP/3DdEk+4L/oJuG/2J0eT+odBceR3FIbaTpbTS1587uOM0UA
         GZ609fQYm51RbRVxl6hIxwh13RJsMzfKG8E0ceAWwkrJ/KXLwR4jVfq+pDat4ynNo994
         IOUhOvRbQ9I1/EaX44PedVWXXJz0H+H4wfGaNKx5SMrdenQJUDwLDmuW0kZvkAdwI1Tc
         DfxDbfQWjdYxQprQf+UOMOkbdrhE6nb1m+Rznf9YsNrT+14wHJvCp+lkE0G4VERdV5NB
         JOlcb7kZuVFzlg8NDUtds64Xs67Dr9Wd7IN3htwSr/mEIXEfT5gsR2cJskHagQkuPl+h
         YI2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=axTIz7ltM8cwrtgDAvrTnSscTjPZUC/+lnRRrrByK8E=;
        b=FoTeOZMHmgW+h6t9MF7xsBIjLvNyGXhTfsDhl2Y8F2lyntkasVM2n4jjQ0QC+jVMZg
         wx+2JmB8LF0GhNa7aQ+Kacly5wodvRfAe0XJhZ5m9p+X5lLar9lUGzc71doBCvGLQz2o
         n7LlZZGU4xeUMtbBRdOeJVBNkRYMTwooyI9S9BZSR299AH3TnRfdmsIx4JDbfdJy+lBW
         ZBxKa3hBHtMhtZbCj8CbdmqArxvbKTvpC05Dgc0KDcjB8oZVaM+VFWFeiHokZf1dCJyO
         xWx8+LodSdkiEHH6DVq3zzq0eVs2zSHDw+diQUKi6QJdurgP1N58yuwiQG/gtEJ4uv++
         OSbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=axTIz7ltM8cwrtgDAvrTnSscTjPZUC/+lnRRrrByK8E=;
        b=qwY1T6nSS3onazhu05r6DW9xUzPabLpUIUZR5R0veI8DQfs0VcGW7hOFDnbNs57I+j
         ADYrfu/6H4w1J3/ChSh/dhLg8OiLmt2SYiv4rZS0ttPKf9Cad/lRlTDAXMW+bgAZ9UbE
         Cwh3p6Hd7Kig2DLxD2IauNL+ue99EKpLdFPr0iUjdBVRG9CNBE03ANqVEHTpKCN+wTGU
         OedrKJz4I4z4bEzWR8CdM5N17S/qB1fxXmt6j3xQ5WD811LzuBmWlS0RIl8EqHY7AS2g
         jQvJlM39XKHTE+Lohl3gVYCNniLbjqTWEyoiUMAbz5hpvPO7OLMiN6/8o5a+vlhmT/B2
         xAng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUiRzwgecmrxUPcng4N0xeANqRHX92YYI4sZqZ6YQycSMn4/K7k
	GVshJvudhbBrK1hFetusIsg=
X-Google-Smtp-Source: APXvYqwkWrxBUkkZfnAvyDWOnXdLkGY5ewU6VU9pvnF1OpI2+DnCXL5K1bK6qy1qq/LGqLbVETCkCg==
X-Received: by 2002:a9f:24c4:: with SMTP id 62mr1995731uar.104.1570029164246;
        Wed, 02 Oct 2019 08:12:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:27ea:: with SMTP id b97ls161790uab.14.gmail; Wed, 02 Oct
 2019 08:12:44 -0700 (PDT)
X-Received: by 2002:ab0:224e:: with SMTP id z14mr1970727uan.36.1570029163911;
        Wed, 02 Oct 2019 08:12:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570029163; cv=none;
        d=google.com; s=arc-20160816;
        b=ZALBEi+XaBOLu9c19b6N5i6VdDK+/0QQs0R0AvRxFzmDmB7o2N+zMFVwsrjpld+io/
         GMeu4CDoxw0CUFhiWWy6dJwveNVGdbTYeynUsy/uraQ9rYHaZbqFxVTBr7qr9QQc1LQB
         KnvKtY8g6XfqCv/f5tXvICYRRRp0gzFNf8wNnStQ890zsvls8ZB6kvMRvkvOP9/o7w7i
         rYhlK1qWnxDqiu22Pp+D9FmHgs6CWgN1O8QId4MVYzeXsOaBV40m0MjgzOZLHwBgGbM4
         jvywBEuVu2Btf3F1VSeb6+JytxvlfjqcdyvJnJ/pxT461fi8foCDOtfc9NVagv6LQuCL
         XxWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VaE7w1CaTRczQgzzFI2ExCLX+A6tMdd72aOZN4Z0QKo=;
        b=AyIff0iMNL8B3x74vBRukmzYaJmimIDAO/vOUrRoP76ghIuatl0y1BhajlBeTCvLTF
         UEqdhZ80iGDApiOJsLGK/nNIhMkmFVhMq3xmKJKd66+zuwroQCbimi2lCkTQkaB+Vhhk
         QVfTcis9A9nqS1drPXqTbq+uBLZg4Q9JPqrqcuQBp9nZaRie5ZLe71FGLpk1ejVzFeNF
         Lu9mRNtpJci8D4NNn0XCvJhQH5rQcJXtjpx2Av7f3HJ98FR47aDuqMcUPYWNmR8sbOpe
         rRNQGTL53CBlvaLaSRnpkfYsH7ICCAJD2LgqzeMmj7rbnuMK0AaIoHScoT5rcV3xnf6H
         argg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nLE1/iHW";
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id i13si1277999uan.1.2019.10.02.08.12.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 08:12:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Received: by mail-yw1-xc41.google.com with SMTP id x64so6202221ywg.3
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 08:12:43 -0700 (PDT)
X-Received: by 2002:a81:4a04:: with SMTP id x4mr2900984ywa.168.1570029163271;
 Wed, 02 Oct 2019 08:12:43 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120136.1777161-1-arnd@arndb.de> <20191002120136.1777161-5-arnd@arndb.de>
 <CADnq5_PkTwTBbQY9JatZD2_sWjdU5_hK7V2GLfviEvMh_QB12Q@mail.gmail.com> <CAK8P3a0KMT437okhobg=Vzi5LRDgUO7L-x35LczBGXE2jYLg2A@mail.gmail.com>
In-Reply-To: <CAK8P3a0KMT437okhobg=Vzi5LRDgUO7L-x35LczBGXE2jYLg2A@mail.gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 2 Oct 2019 11:12:31 -0400
Message-ID: <CADnq5_PWWndBomBOXTYgmFqo+U8f8d8+OdJ5Ym3+a2mgO5=E0A@mail.gmail.com>
Subject: Re: [PATCH 4/6] drm/amd/display: fix dcn21 Makefile for clang
To: Arnd Bergmann <arnd@arndb.de>
Cc: Alex Deucher <alexander.deucher@amd.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="nLE1/iHW";       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c41
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

On Wed, Oct 2, 2019 at 10:51 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, Oct 2, 2019 at 4:17 PM Alex Deucher <alexdeucher@gmail.com> wrote=
:
> >
> > I'm getting an error with gcc with this patch:
> >   CC [M]  drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource=
.o
> > drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c: In
> > function =E2=80=98calculate_wm_set_for_vlevel=E2=80=99:
> > drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.c:964:22:
> > error: SSE register return with SSE disabled
>
> I checked again with gcc-8, but do not see that error message.
>
> > > -CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o :=3D -mhard-float -ms=
se -mpreferred-stack-boundary=3D4
> > > +CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o :=3D -mhard-float -ms=
se $(cc_stack_align)
>
> Nothing should really change with regards to the -msse flag here, only
> the stack alignment flag changed. Maybe there was some other change
> in your Makefile that conflicts with my my patch?

This patch on top of yours seems to fix it and aligns better with the
other Makefiles:

diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
index ef673bffc241..e71f3ee76cd1 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
@@ -9,10 +9,10 @@ else ifneq ($(call cc-option, -mstack-alignment=3D16),)
        cc_stack_align :=3D -mstack-alignment=3D16
 endif

-CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o :=3D -mhard-float -msse
$(cc_stack_align)
+CFLAGS_dcn21_resource.o :=3D -mhard-float -msse $(cc_stack_align)

 ifdef CONFIG_CC_IS_CLANG
-CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o +=3D -msse2
+CFLAGS_dcn21_resource.o +=3D -msse2
 endif

 AMD_DAL_DCN21 =3D $(addprefix $(AMDDALPATH)/dc/dcn21/,$(DCN21))

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CADnq5_PWWndBomBOXTYgmFqo%2BU8f8d8%2BOdJ5Ym3%2Ba2mgO5%3DE=
0A%40mail.gmail.com.
