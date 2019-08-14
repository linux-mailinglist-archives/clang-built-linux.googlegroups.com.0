Return-Path: <clang-built-linux+bncBDIYTLXUW4BRB4FH2LVAKGQEHCTANFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1138E115
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 01:06:24 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id m2sf120389ljj.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 16:06:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565823984; cv=pass;
        d=google.com; s=arc-20160816;
        b=LNaWt3sA+jI256NZsMKfRlDSzBwb2mLBRmjwoZVeYQeZrIZ88lDYfhHB46HJWFZfkv
         oLpQX0jPWFaymI5i7heJxu7jG5tpx+xRBLUVVaUt6a0m9t+7SBoAF4wNI0uJyhShvIQh
         YQqXn45it9i5JviJdn2rKv56H7ZzLNR+ZCv3uqN12gJhAZYh5gIcVdoXSuCZAHfrTb/L
         UQ12Hnlt1gXcJ8YpnXSx96CbVcYlIBAif1ajnyoCcCKlxosMgM3UPgS9Sd7TguzvRnSF
         aNOSBC/oqLvvx0wW9T+Hrf3s/7vOX1fJrQ67XjD8ps4c/cAcHWZDGly0dlKEpPC+Gf3h
         87Ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:autocrypt:openpgp:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=n9dgfND5MfnZN3bRAUo6Jy+AgEL2kiJGdVa9MrfWo/s=;
        b=StOJc5OqjBnX4Ug+3mV5svTwSoWedi0wBffM/zMKBI75HHAUjDja4DCumLZh0cFiuP
         8yd+IJLhXBTnNXtG+1ODb8/2dDzC0qv0ojV0dQJ27v12HRWs/ckfU3DjdJ/Mt1okKcQs
         UvcBC/i475h+KpVy8rkzHvXO3ihOBIhb9S/JnLp/+2clcS+YBWCtNLqWU9KC7wuEl2eE
         jA4zwARGROXcD9fhP7hM65lOGobxhkFh54Ote0pVbcaaqoG96RPWq0cY8wPitBAbRBXI
         hLYARaBqgL3hlQW6NiaSCc6cu16xnkxfAu75ffBGidOEYS/Z4mSPVzuDoRSM3WnqUHS2
         Hndg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tqkqbYQL;
       spf=pass (google.com: domain of daniel.lezcano@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniel.lezcano@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:openpgp:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n9dgfND5MfnZN3bRAUo6Jy+AgEL2kiJGdVa9MrfWo/s=;
        b=AQ/COgN6L4nYmcGjR9yjM868xVKAOl1PDMlhWiwPFxwLkz1QJNDyemThFIEUfy1S9p
         9zS2rReFBMu8+xYnn3rhHjq5xBhchLt4cu/yeTfZd08i6MHupgnMukJJf4BedvYTedMw
         uFb/CBmb44xMPOUQUzjywV7UJgbxGeK9wVRUBmBHaYBSmQ3HhwcZCuoPdirXuPBWLA0o
         lzejhMK+cNHyvUwb1zgt8PXsDA6XuPI5iaHFQZkanPBD1pWDMPJ18AqJ08VadJi+4Y0S
         Pg3dRZx8TdB2EB73mv3u3D4anm7A78N46VXaYKhOlVkAGsR2pr0jV2Q1xUD4jbHBeyWT
         tlbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:openpgp
         :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n9dgfND5MfnZN3bRAUo6Jy+AgEL2kiJGdVa9MrfWo/s=;
        b=BVCztdwToTHMQBYEYFks4bVJnBzWIYc7JaaZm8/IOrvcbwa1ni4TFRz//SMPXOXsju
         VdLkA+WakX+1b3Z8dGZvc/Wfz9ARxuHK6nGxraSgpGq13qwhaKY4cgNUi30IUI/UQbVB
         HjqxQLuflSgFd0If1nZIn5IcwFXWOiMM21Hc6j9Zvceq3672t7iclNKZPNuveLgAGjuQ
         g1ZPenJdSDwh0B3me1dw1Hdl0u1wHB4V+mjQyZKhteAu0pdcoCWfZdWQR6xMf91Bga2e
         WI///zZJ+RYWIrPtC0u8klXbR3ucIqBmHNtHDaUhKg7RnUFeN7A4oTnwQlBNhleyE0O3
         CJMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU4KzYBKzIyL/w/e1460grjC0RxwCySlW4PAIqoRAs8js4RxcUL
	QlocJa58LaFm7Oowz8cMuM8=
X-Google-Smtp-Source: APXvYqxVt0NJIlGGe8L+hKZoPg0TMCOG/NwjVL2xuPRaouJdI8FgBmrtBZYkD1EAdE2oCP/hYfk7mQ==
X-Received: by 2002:ac2:44af:: with SMTP id c15mr999332lfm.32.1565823984252;
        Wed, 14 Aug 2019 16:06:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9245:: with SMTP id v5ls432882ljg.3.gmail; Wed, 14 Aug
 2019 16:06:23 -0700 (PDT)
X-Received: by 2002:a2e:7c0b:: with SMTP id x11mr1073611ljc.85.1565823983772;
        Wed, 14 Aug 2019 16:06:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565823983; cv=none;
        d=google.com; s=arc-20160816;
        b=qWz5qZnc2TPQjMpQRWeSKx2DBcjfkH0pV8u8dnO9DbGiJSs/jpADpcg8KZGUQwBA/D
         2za+iJIhmsBAYGcypDboHhtw5yGHkrNy3AXHEbO76FXkHMppiRMExwAF+N8Roxbq5ECg
         sssddpIFU57EsJT935ZAi+F4SUx9oxB8qCmtfJOFUk+6FXsCAtnw3DrpOo+KGUG3CsXf
         xW0jWtfah7BJ0D9+O5Wl7ZhLeUO3k3UfpkeLzvm/lchgR+ycB9Twqf1HWJ3ixXd+NA58
         zkFqO1hftrZ2QU6Lx1m6GV8aowWUtemk2Q9SjlXDiGJfe0VeTCIeCW/AjKCShKgFWf3/
         h/UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:openpgp:from:references:cc:to
         :subject:dkim-signature;
        bh=SFRptDeVPDVKCYGeS+12eJHKKuTPQxS2VlcH881itwc=;
        b=L4SUhVUrVmliQ3bOHsOhr9fYxthkGlzDGU6kdZBz/Hx2qYKIX98Lx9PndudsWR8h4A
         OqLbgadohLzzfkrTOgkcsd8aFfSGbRtFCKsUoIGQYhGuelzxqCZP3IKAX8hHcgA0ZV3t
         eXYxonpEryiCeSI4ZkkWMZyAppmV6NXQmQxZf8YvnhJ0INO2JvZ3bPU3wirXFKIUm+Kq
         CKXK1FTxPjo4vPQmkOKCjgxJJDibMdEb+hV/wjulxrI63zNrHmJNn7nzTAGzG+ypKSuv
         7LiODaBCHbj0fJoOpcH/7I+ImbilA/xBjQMdKQDnzEorhv+knVgJvd3gkc05CKQ8G2Lv
         RUJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tqkqbYQL;
       spf=pass (google.com: domain of daniel.lezcano@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniel.lezcano@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id h11si63106lja.0.2019.08.14.16.06.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2019 16:06:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.lezcano@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id o4so130169wmh.2
        for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 16:06:23 -0700 (PDT)
X-Received: by 2002:a1c:a008:: with SMTP id j8mr149886wme.57.1565823982843;
        Wed, 14 Aug 2019 16:06:22 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:e489:8d60:6476:fbf7? ([2a01:e34:ed2f:f020:e489:8d60:6476:fbf7])
        by smtp.googlemail.com with ESMTPSA id p10sm145298wma.8.2019.08.14.16.06.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2019 16:06:22 -0700 (PDT)
Subject: Re: [PATCH] thermal: armada: Fix -Wshift-negative-value
To: Nick Desaulniers <ndesaulniers@google.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, rui.zhang@intel.com,
 edubezval@gmail.com
Cc: linux-pm@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Huckleberry <nhuck@google.com>
References: <20190613184923.245935-1-nhuck@google.com>
 <27428324-129e-ee37-304a-0da2ed3810a0@linaro.org>
 <CAJkfWY4X-YwuansL1R5w0rQNmE_hVJZKrMBJmOLp9G2DJPkNow@mail.gmail.com>
 <CAKwvOdkEp=q+2B_iqqyHJLwwUaFH2jnO+Ey8t-hn=x4shTbdoA@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <c2b821f2-545a-9839-3de6-d68dfee5b5dc@linaro.org>
Date: Thu, 15 Aug 2019 01:06:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkEp=q+2B_iqqyHJLwwUaFH2jnO+Ey8t-hn=x4shTbdoA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: daniel.lezcano@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=tqkqbYQL;       spf=pass
 (google.com: domain of daniel.lezcano@linaro.org designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniel.lezcano@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On 15/08/2019 00:12, Nick Desaulniers wrote:
> On Tue, Aug 13, 2019 at 10:28 AM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
>>
>> Following up to see if this patch is going to be accepted.
>=20
> Miquel is listed as the maintainer of this file in MAINTAINERS.
> Miquel, can you please pick this up?  Otherwise Zhang, Eduardo, and
> Daniel are listed as maintainers for drivers/thermal/.

I'm listed as reviewer, it is up to Zhang or Eduardo to take the patches.


--=20
 <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software for ARM=
 SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/c2b821f2-545a-9839-3de6-d68dfee5b5dc%40linaro.org.
