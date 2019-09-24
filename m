Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWHAVHWAKGQEE2HOEII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D518CBD2C5
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 21:36:57 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id g15sf4824793ioc.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 12:36:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569353816; cv=pass;
        d=google.com; s=arc-20160816;
        b=WMDPZ5xjSZZDVNPstxKH8UpJ2GbmiqNr2EdSlKM7OFkC574UkQivBNz54yaLLHiHnz
         yrIKLpMdGsG23ZRIdAiEtPV132TJ4z3HA9spb5I8nqQCHHyG+JmTZDxK8NDUqtyqonty
         OKlByWmTLwSqvVVKMNJE9dliw3eSWhgRQjRfgQ33UlXvhL6Dkm7aoSfsw5EB+2oWJlwZ
         6alwTO3ovahMCMTvpCl6dMtmXkSFmBkOvP5WHEjDga0cNsXEPujhLEhDl4kOMx6JlqiG
         nB3HMtG/+P4+V35smOuN3XvxmFVm7rXRnBuJsncbuUCpMS1JSgaXLtTMOGpBKgO4XriT
         tKgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=z5Dr/ZVjunrYpXFst7yJhljuTnJffoZeVzPzXg9Yyyk=;
        b=HXraoeg2aJoCyKXbhNTRTBQ2WmSNpz3ZHxKabS/xenjp2y26X4zTn1c2eh3USTbFIW
         N5kc2DX33O0uBC0Pue3NeU9h0IxH1qqpWVivC6r0oPqEmaqZAz6Ow7Y07EY5CcOMRAHY
         bjD1ZWiJnxU9lUdJslYE7ziKogrqbw+j1SlMfT/wQ5CegHwfQqNO/knrpJXX7m4HjAGb
         AZsGS9cRf9VvyhlmRAALHfcXzMOWfk7oqlsb/fyFDa8hNkaIELlFCR2qYc27ULwt8UXi
         dQBH1mvModfLsZptuHfQoCd623NQl7Hi3eLjAuzr2zDWI5L/w4awBGxbcbg7uQn4zHWY
         Cwyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TYLZ1DGN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z5Dr/ZVjunrYpXFst7yJhljuTnJffoZeVzPzXg9Yyyk=;
        b=OUFkPZihGAx9Q31OT9SJ4rDuynHwYUK6kZ8NU1eQFIHorfeQJ6Bm7wSDzglE1dVgIk
         4jlHpCPXGOIaxEJ2eeZHObBkCGrSEtHt2NKiJCoZYDF4dSeydnk+Mq0uaQ5CZiJzRerK
         Q+q9No95Woe0Kb4YdoppSqLwo1mvqCK/SH23X5rYgwBGTJcXC25U9sX5c8kzOR+2xcf3
         56quuk60YHkx+bRWiQoYUcu/G4wDZhFqrPjNKsbuZnVypHwql/rQj3RErg5LZ4ypI3N7
         wUUCOmY6cpGQo8EKq2Or2CbnD2VofE2f1rchUfnweoJssyH5mHMkVV/XBIZAwDcXOKFW
         /O0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z5Dr/ZVjunrYpXFst7yJhljuTnJffoZeVzPzXg9Yyyk=;
        b=WLp0LjrWMl1oXghL+txxsVuhDXmPTfTCoCQrgkzNSBSTSWWkiVB4u5uLZNUP+m5W9v
         IAQIlrxgspVaUDYZroNZ7qkVTetPexImFxuP5u6byGenUeC85f2iws+tbfg5wRXDjZMN
         uUbdve1JVp7kfz73lyDmPoofO2Lu/dwN7byjZVTFDfuD+eGYVhmsGdEXob3u4+qUQzZP
         7ajsHDAURhAqMAx16uci5VRE20XuyyZIjjuaHXT8JVacLDPkrWvApv7BbND6N/utirQH
         ALHDF/zfvfH71zcxOlNxAHuIqjWlh0Q9HCa+URjZNwcnMGBjoA8HctEzbLigvQJLM268
         ghNg==
X-Gm-Message-State: APjAAAVT7GeoOh34HLXuDfPMhU0RMvbiLpKk0z1bzIPY9yz7oVBR/wLn
	0TCpNWYcXiXSlj8kIl7Wy/Y=
X-Google-Smtp-Source: APXvYqz21zTS9sjXIFK6+7u8cfgGrC8+2xBISJH//oLEfU3M6hEHKJNKTHLoGMFvLN+TdUipC/KJvw==
X-Received: by 2002:a5e:960f:: with SMTP id a15mr5288430ioq.13.1569353816667;
        Tue, 24 Sep 2019 12:36:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6803:: with SMTP id d3ls846302ioc.2.gmail; Tue, 24 Sep
 2019 12:36:56 -0700 (PDT)
X-Received: by 2002:a5d:8911:: with SMTP id b17mr5391314ion.287.1569353816321;
        Tue, 24 Sep 2019 12:36:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569353816; cv=none;
        d=google.com; s=arc-20160816;
        b=ofZC+l2Z8dMBLB3pd4YYVAhgJbSZQHooQ0vQDV2DxzFAfDGhBhzzZrF/tV1wb+3hRu
         LI2dY3HgdHUuxE3Ed1OcfUNslmj/gUzfaOp7S7TOWyoyOywY2/tmnh4EJsmZQwfeCFOP
         vMqmAsI0bZCGEfv8lHAbjKXwIMbMfG5zi49tixBA8XqbgKWcnYkxryGwRoGMXqyeesep
         d/nq6C0RQxItU9pJ0C9HXBI48poodHp0k84Urvacc0QBKJZCkrtXOR9M7S+bOgGBwN5T
         pOXpHvckrLHM+KuDsvSw8yRBNaiYEUMcMWWhHNpkodYruAuVJsA/7RCuhot0BkCSVc6m
         nzlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/JVQqtsy+mKk2waXIHthBqSLO8+9xamj2i8nFWhqynA=;
        b=HRQZZ003dNRKN5E4t0xjLPButflvZFrKoWX8OkOorIbc9HyBXeUeej9eNKa0YHOYOw
         ntjk+1iTREtCv4UeXq/VuN35gJwQoiwasSBgqzQfeKueXvSsxDT5T+dEQpD/GzULSFz4
         H6Lnc8DOoJjkPfXqPibYNqwYsVY4OMUYOLGSd+FlE5wCKo4cBhpqGnsDx7mntEoUSLWi
         it6wOH8Jalib96URAyiEqAXFbR+Re9qf3P6oLYItY+7gyDrMgKncaJvEXEfKNovwGazy
         /Xwex/OIt/wW2M61pQ7f3vtwF2DJCNS8bOzaLMaXVl8+YF16kcM5HW2D5B6SiySE3g+P
         mQPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TYLZ1DGN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n201si133335iod.3.2019.09.24.12.36.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 12:36:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 205so1964490pfw.2
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 12:36:56 -0700 (PDT)
X-Received: by 2002:a17:90a:178d:: with SMTP id q13mr1845586pja.134.1569353815306;
 Tue, 24 Sep 2019 12:36:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=GVdHhsdHOMpuhEKkWMssW37keqX5c59+6fiEgLs+Q1g@mail.gmail.com>
 <20190924174728.201464-1-ndesaulniers@google.com> <20190924183827.GA2800937@archlinux-threadripper>
In-Reply-To: <20190924183827.GA2800937@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Sep 2019 12:36:44 -0700
Message-ID: <CAKwvOdmVfyhG85BHdaHgc23RuRkJJnvd2bLUEzNNpZDuqJ79mw@mail.gmail.com>
Subject: Re: [PATCH v2] hwmon: (applesmc) fix UB and udelay overflow
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Guenter Roeck <linux@roeck-us.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, jdelvare@suse.com, 
	=?UTF-8?Q?Tomasz_Pawe=C5=82_Gajc?= <tpgxyz@gmail.com>, 
	Henrik Rydberg <rydberg@bitmath.org>, linux-hwmon@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="000000000000b0c195059351a8bd"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TYLZ1DGN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

--000000000000b0c195059351a8bd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 24, 2019 at 11:38 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Sep 24, 2019 at 10:47:28AM -0700, Nick Desaulniers wrote:
> > Fixes the following 2 issues in the driver:
> > 1. Left shifting a signed integer is undefined behavior. Unsigned
> >    integral types should be used for bitwise operations.
> > 2. The delay scales from 0x0010 to 0x20000 by powers of 2, but udelay
> >    will result in a linkage failure when given a constant that's greate=
r
> >    than 20000 (0x4E20). Agressive loop unrolling can fully unroll the
> >    loop, resulting in later iterations overflowing the call to udelay.
> >
> > 2 is fixed via splitting the loop in two, iterating the first up to the
> > point where udelay would overflow, then switching to mdelay, as
> > suggested in Documentation/timers/timers-howto.rst.
> >
> > Reported-by: Tomasz Pawe=C5=82 Gajc <tpgxyz@gmail.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/678
> > Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes V1 -> V2:
> > * The first loop in send_byte() needs to break out on the same conditio=
n
> >   now. Technically, the loop condition could even be removed. The diff
> >   looks funny because of the duplicated logic between existing and newl=
y
> >   added for loops.
> >
> >  drivers/hwmon/applesmc.c | 35 +++++++++++++++++++++++++++++++----
> >  1 file changed, 31 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/hwmon/applesmc.c b/drivers/hwmon/applesmc.c
> > index 183ff3d25129..c76adb504dff 100644
> > --- a/drivers/hwmon/applesmc.c
> > +++ b/drivers/hwmon/applesmc.c
> > @@ -46,6 +46,7 @@
> >  #define APPLESMC_MIN_WAIT    0x0010
> >  #define APPLESMC_RETRY_WAIT  0x0100
> >  #define APPLESMC_MAX_WAIT    0x20000
> > +#define APPLESMC_UDELAY_MAX  20000
> >
> >  #define APPLESMC_READ_CMD    0x10
> >  #define APPLESMC_WRITE_CMD   0x11
> > @@ -157,14 +158,23 @@ static struct workqueue_struct *applesmc_led_wq;
> >  static int wait_read(void)
> >  {
> >       u8 status;
> > -     int us;
> > -     for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D 1=
) {
> > +     unsigned int us;
> > +
> > +     for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=3D=
 1) {
> >               udelay(us);
> >               status =3D inb(APPLESMC_CMD_PORT);
> >               /* read: wait for smc to settle */
> >               if (status & 0x01)
> >                       return 0;
> >       }
> > +     /* switch to mdelay for longer sleeps */
> > +     for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> > +             mdelay(us);
> > +             status =3D inb(APPLESMC_CMD_PORT);
> > +             /* read: wait for smc to settle */
> > +             if (status & 0x01)
> > +                     return 0;
> > +     }
> >
> >       pr_warn("wait_read() fail: 0x%02x\n", status);
> >       return -EIO;
> > @@ -177,10 +187,10 @@ static int wait_read(void)
> >  static int send_byte(u8 cmd, u16 port)
> >  {
> >       u8 status;
> > -     int us;
> > +     unsigned int us;
> >
> >       outb(cmd, port);
> > -     for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D 1=
) {
> > +     for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=3D=
 1) {
> >               udelay(us);
> >               status =3D inb(APPLESMC_CMD_PORT);
> >               /* write: wait for smc to settle */
> > @@ -190,6 +200,23 @@ static int send_byte(u8 cmd, u16 port)
> >               if (status & 0x04)
> >                       return 0;
> >               /* timeout: give up */
> > +             if (us << 1 =3D=3D APPLESMC_UDELAY_MAX)
> > +                     break;
> > +             /* busy: long wait and resend */
> > +             udelay(APPLESMC_RETRY_WAIT);
> > +             outb(cmd, port);
> > +     }
> > +     /* switch to mdelay for longer sleeps */
> > +     for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> > +             mdelay(us);
> > +             status =3D inb(APPLESMC_CMD_PORT);
> > +             /* write: wait for smc to settle */
> > +             if (status & 0x02)
> > +                     continue;
> > +             /* ready: cmd accepted, return */
> > +             if (status & 0x04)
> > +                     return 0;
> > +             /* timeout: give up */
> >               if (us << 1 =3D=3D APPLESMC_MAX_WAIT)
> >                       break;
> >               /* busy: long wait and resend */
> > --
> > 2.23.0.351.gc4317032e6-goog
> >
>
> This resolves the __bad_udelay appearance at -O3 for me. I am not
> familiar enough with this code to give a reviewed by though!

Does that constitute a Tested-by tag?

>
> Also, for some odd reason, I couldn't apply your patch with 'git apply':
>
> % curl -LSs https://lore.kernel.org/lkml/20190924174728.201464-1-ndesauln=
iers@google.com/raw | git apply
> error: corrupt patch at line 117
>
> It looks like some of the '=3D' got changed into =3D3D and some spaces go=
t
> changed into =3D20. Weird encoding glitch?

The text in my email client shows no encoding error; the link above
shows the issue.  Attaching a copy here, in case git-send-email
related.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmVfyhG85BHdaHgc23RuRkJJnvd2bLUEzNNpZDuqJ79mw%40mai=
l.gmail.com.

--000000000000b0c195059351a8bd
Content-Type: text/x-patch; charset="UTF-8"; 
	name="v2-0001-hwmon-applesmc-fix-UB-and-udelay-overflow.patch"
Content-Disposition: attachment; 
	filename="v2-0001-hwmon-applesmc-fix-UB-and-udelay-overflow.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k0y8pzw50>
X-Attachment-Id: f_k0y8pzw50

RnJvbSBlMTEyOTM1Y2I0MzYxYWE4MjBiODk1ODhlNTc2NGJmYzNkZmQ3ZjlmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xl
LmNvbT4KRGF0ZTogVHVlLCAyNCBTZXAgMjAxOSAxMDoyNjozNCAtMDcwMApTdWJqZWN0OiBbUEFU
Q0ggdjJdIGh3bW9uOiAoYXBwbGVzbWMpIGZpeCBVQiBhbmQgdWRlbGF5IG92ZXJmbG93Ck1JTUUt
VmVyc2lvbjogMS4wCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOApDb250
ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0CgpGaXhlcyB0aGUgZm9sbG93aW5nIDIgaXNzdWVz
IGluIHRoZSBkcml2ZXI6CjEuIExlZnQgc2hpZnRpbmcgYSBzaWduZWQgaW50ZWdlciBpcyB1bmRl
ZmluZWQgYmVoYXZpb3IuIFVuc2lnbmVkCiAgIGludGVncmFsIHR5cGVzIHNob3VsZCBiZSB1c2Vk
IGZvciBiaXR3aXNlIG9wZXJhdGlvbnMuCjIuIFRoZSBkZWxheSBzY2FsZXMgZnJvbSAweDAwMTAg
dG8gMHgyMDAwMCBieSBwb3dlcnMgb2YgMiwgYnV0IHVkZWxheQogICB3aWxsIHJlc3VsdCBpbiBh
IGxpbmthZ2UgZmFpbHVyZSB3aGVuIGdpdmVuIGEgY29uc3RhbnQgdGhhdCdzIGdyZWF0ZXIKICAg
dGhhbiAyMDAwMCAoMHg0RTIwKS4gQWdyZXNzaXZlIGxvb3AgdW5yb2xsaW5nIGNhbiBmdWxseSB1
bnJvbGwgdGhlCiAgIGxvb3AsIHJlc3VsdGluZyBpbiBsYXRlciBpdGVyYXRpb25zIG92ZXJmbG93
aW5nIHRoZSBjYWxsIHRvIHVkZWxheS4KCjIgaXMgZml4ZWQgdmlhIHNwbGl0dGluZyB0aGUgbG9v
cCBpbiB0d28sIGl0ZXJhdGluZyB0aGUgZmlyc3QgdXAgdG8gdGhlCnBvaW50IHdoZXJlIHVkZWxh
eSB3b3VsZCBvdmVyZmxvdywgdGhlbiBzd2l0Y2hpbmcgdG8gbWRlbGF5LCBhcwpzdWdnZXN0ZWQg
aW4gRG9jdW1lbnRhdGlvbi90aW1lcnMvdGltZXJzLWhvd3RvLnJzdC4KClJlcG9ydGVkLWJ5OiBU
b21hc3ogUGF3ZcWCIEdhamMgPHRwZ3h5ekBnbWFpbC5jb20+Ckxpbms6IGh0dHBzOi8vZ2l0aHVi
LmNvbS9DbGFuZ0J1aWx0TGludXgvbGludXgvaXNzdWVzLzY3OApEZWJ1Z2dlZC1ieTogTmF0aGFu
IENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogTmlj
ayBEZXNhdWxuaWVycyA8bmRlc2F1bG5pZXJzQGdvb2dsZS5jb20+Ci0tLQpDaGFuZ2VzIFYxIC0+
IFYyOgoqIFRoZSBmaXJzdCBsb29wIGluIHNlbmRfYnl0ZSgpIG5lZWRzIHRvIGJyZWFrIG91dCBv
biB0aGUgc2FtZSBjb25kaXRpb24KICBub3cuIFRlY2huaWNhbGx5LCB0aGUgbG9vcCBjb25kaXRp
b24gY291bGQgZXZlbiBiZSByZW1vdmVkLiBUaGUgZGlmZgogIGxvb2tzIGZ1bm55IGJlY2F1c2Ug
b2YgdGhlIGR1cGxpY2F0ZWQgbG9naWMgYmV0d2VlbiBleGlzdGluZyBhbmQgbmV3bHkKICBhZGRl
ZCBmb3IgbG9vcHMuCgogZHJpdmVycy9od21vbi9hcHBsZXNtYy5jIHwgMzUgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaHdtb24vYXBwbGVzbWMuYyBi
L2RyaXZlcnMvaHdtb24vYXBwbGVzbWMuYwppbmRleCAxODNmZjNkMjUxMjkuLmM3NmFkYjUwNGRm
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9od21vbi9hcHBsZXNtYy5jCisrKyBiL2RyaXZlcnMvaHdt
b24vYXBwbGVzbWMuYwpAQCAtNDYsNiArNDYsNyBAQAogI2RlZmluZSBBUFBMRVNNQ19NSU5fV0FJ
VAkweDAwMTAKICNkZWZpbmUgQVBQTEVTTUNfUkVUUllfV0FJVAkweDAxMDAKICNkZWZpbmUgQVBQ
TEVTTUNfTUFYX1dBSVQJMHgyMDAwMAorI2RlZmluZSBBUFBMRVNNQ19VREVMQVlfTUFYCTIwMDAw
CiAKICNkZWZpbmUgQVBQTEVTTUNfUkVBRF9DTUQJMHgxMAogI2RlZmluZSBBUFBMRVNNQ19XUklU
RV9DTUQJMHgxMQpAQCAtMTU3LDE0ICsxNTgsMjMgQEAgc3RhdGljIHN0cnVjdCB3b3JrcXVldWVf
c3RydWN0ICphcHBsZXNtY19sZWRfd3E7CiBzdGF0aWMgaW50IHdhaXRfcmVhZCh2b2lkKQogewog
CXU4IHN0YXR1czsKLQlpbnQgdXM7Ci0JZm9yICh1cyA9IEFQUExFU01DX01JTl9XQUlUOyB1cyA8
IEFQUExFU01DX01BWF9XQUlUOyB1cyA8PD0gMSkgeworCXVuc2lnbmVkIGludCB1czsKKworCWZv
ciAodXMgPSBBUFBMRVNNQ19NSU5fV0FJVDsgdXMgPCBBUFBMRVNNQ19VREVMQVlfTUFYOyB1cyA8
PD0gMSkgewogCQl1ZGVsYXkodXMpOwogCQlzdGF0dXMgPSBpbmIoQVBQTEVTTUNfQ01EX1BPUlQp
OwogCQkvKiByZWFkOiB3YWl0IGZvciBzbWMgdG8gc2V0dGxlICovCiAJCWlmIChzdGF0dXMgJiAw
eDAxKQogCQkJcmV0dXJuIDA7CiAJfQorCS8qIHN3aXRjaCB0byBtZGVsYXkgZm9yIGxvbmdlciBz
bGVlcHMgKi8KKwlmb3IgKDsgdXMgPCBBUFBMRVNNQ19NQVhfV0FJVDsgdXMgPDw9IDEpIHsKKwkJ
bWRlbGF5KHVzKTsKKwkJc3RhdHVzID0gaW5iKEFQUExFU01DX0NNRF9QT1JUKTsKKwkJLyogcmVh
ZDogd2FpdCBmb3Igc21jIHRvIHNldHRsZSAqLworCQlpZiAoc3RhdHVzICYgMHgwMSkKKwkJCXJl
dHVybiAwOworCX0KIAogCXByX3dhcm4oIndhaXRfcmVhZCgpIGZhaWw6IDB4JTAyeFxuIiwgc3Rh
dHVzKTsKIAlyZXR1cm4gLUVJTzsKQEAgLTE3NywxMCArMTg3LDEwIEBAIHN0YXRpYyBpbnQgd2Fp
dF9yZWFkKHZvaWQpCiBzdGF0aWMgaW50IHNlbmRfYnl0ZSh1OCBjbWQsIHUxNiBwb3J0KQogewog
CXU4IHN0YXR1czsKLQlpbnQgdXM7CisJdW5zaWduZWQgaW50IHVzOwogCiAJb3V0YihjbWQsIHBv
cnQpOwotCWZvciAodXMgPSBBUFBMRVNNQ19NSU5fV0FJVDsgdXMgPCBBUFBMRVNNQ19NQVhfV0FJ
VDsgdXMgPDw9IDEpIHsKKwlmb3IgKHVzID0gQVBQTEVTTUNfTUlOX1dBSVQ7IHVzIDwgQVBQTEVT
TUNfVURFTEFZX01BWDsgdXMgPDw9IDEpIHsKIAkJdWRlbGF5KHVzKTsKIAkJc3RhdHVzID0gaW5i
KEFQUExFU01DX0NNRF9QT1JUKTsKIAkJLyogd3JpdGU6IHdhaXQgZm9yIHNtYyB0byBzZXR0bGUg
Ki8KQEAgLTE5MCw2ICsyMDAsMjMgQEAgc3RhdGljIGludCBzZW5kX2J5dGUodTggY21kLCB1MTYg
cG9ydCkKIAkJaWYgKHN0YXR1cyAmIDB4MDQpCiAJCQlyZXR1cm4gMDsKIAkJLyogdGltZW91dDog
Z2l2ZSB1cCAqLworCQlpZiAodXMgPDwgMSA9PSBBUFBMRVNNQ19VREVMQVlfTUFYKQorCQkJYnJl
YWs7CisJCS8qIGJ1c3k6IGxvbmcgd2FpdCBhbmQgcmVzZW5kICovCisJCXVkZWxheShBUFBMRVNN
Q19SRVRSWV9XQUlUKTsKKwkJb3V0YihjbWQsIHBvcnQpOworCX0KKwkvKiBzd2l0Y2ggdG8gbWRl
bGF5IGZvciBsb25nZXIgc2xlZXBzICovCisJZm9yICg7IHVzIDwgQVBQTEVTTUNfTUFYX1dBSVQ7
IHVzIDw8PSAxKSB7CisJCW1kZWxheSh1cyk7CisJCXN0YXR1cyA9IGluYihBUFBMRVNNQ19DTURf
UE9SVCk7CisJCS8qIHdyaXRlOiB3YWl0IGZvciBzbWMgdG8gc2V0dGxlICovCisJCWlmIChzdGF0
dXMgJiAweDAyKQorCQkJY29udGludWU7CisJCS8qIHJlYWR5OiBjbWQgYWNjZXB0ZWQsIHJldHVy
biAqLworCQlpZiAoc3RhdHVzICYgMHgwNCkKKwkJCXJldHVybiAwOworCQkvKiB0aW1lb3V0OiBn
aXZlIHVwICovCiAJCWlmICh1cyA8PCAxID09IEFQUExFU01DX01BWF9XQUlUKQogCQkJYnJlYWs7
CiAJCS8qIGJ1c3k6IGxvbmcgd2FpdCBhbmQgcmVzZW5kICovCi0tIAoyLjIzLjAuMzUxLmdjNDMx
NzAzMmU2LWdvb2cKCg==
--000000000000b0c195059351a8bd--
