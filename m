Return-Path: <clang-built-linux+bncBAABBW45SL2AKGQER5ZEYRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F61A19AC1D
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 14:53:49 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id t19sf21212177pfq.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 05:53:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585745628; cv=pass;
        d=google.com; s=arc-20160816;
        b=zGxc6lRUJgF7ttsUGOMN491jDKUTNTckY5fVNwSLz3dX+SIBLAe1Nxi+5McIBOMf9E
         jVzZOK/2eGlV0hcD+OJAZxaHrsLPK+8ic8sX4BhyKseDfB7jeG+y5JCPFQ0b1eZhJyyr
         n+Usd79cbW8iHVrsOyUn+uoCHxeGBsX5bXhI64Ujp+gLPA+G9Xxun9jVYIsSVJq+R3cy
         KSvBt60klcVweIDJ7bg/Jzz8MYyIe6kSVsv0fkelzkIfRUdLZcK5FLQ8nkqnsB5DqejG
         C+mbRo+8V/phQy89S4oX2rd+rfQlaP5/e2LDOj5pMVPrTZJSmMFWPeqtIzWPyQJli0Et
         0VFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:cc:from:to
         :in-reply-to:mime-version:sender:dkim-signature;
        bh=EFBPMq45n6JjfKlOhrOzrUEV/+TrTTvEa94T81uKZ+8=;
        b=mD372j5gbbE+GIPAlvGSIwOsxdV0g6ygb5FCFEGazmrMOicnGx6vF9x3QhwUP6YURn
         JjoRAJ+67ayW1KJTHhemOi1syEB/dYkSafxA/WbJhryITTN3wN8AagIQI/om/Vn8wmCf
         k9wN0ip1fNhR2qLH7rJoFa2tor0s8gUreBGP4HhxcTouyugRwtCFO5crLIOe3elIPTvX
         zZy4uspjEMIHUqoSu0tNlT+Z9cpOP3tYQxAfM4bXYwpX/mLjqLgcykPHoEPVVoPc1hXc
         2YsFWs6TSHua5e9Z1ZkMX/5myvG8NtdcQBf8cp9e36a+fs/Nqql1FZiHYXJOkdXTtmkT
         /2Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:to:from:cc:subject:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EFBPMq45n6JjfKlOhrOzrUEV/+TrTTvEa94T81uKZ+8=;
        b=UNYtbDcJQ450ZtHWbUWNSJ9Aoi/2uVklpVBZ0efeYp/gnZKvjaXq97YWDhdR757Xg4
         bioLe4Hy4c5rI0Fj/s47S1iJroHp1O2rbEE87+WHnvNjsKet4KfuuGQ3xBJhIiZsh+j4
         btTxXo8MIDSRf1QUfTR84d3HXe68l+aByKhDLudpX5TaPFj40IsFiHJenJFQX+l8S6fy
         1gmriqUcBg3ICz5tr7hDJ7MZFT9i22UwDMhmOuLWBfzuEe6umBOSQD7RIXS9N4nWFYxm
         uuIG/FPZUeh+OlpBgwhYwHYzqilEbpGB7iHqUP+95KFNNYEItrzDlbSU88Xm2bMujp0s
         o1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:to:from:cc
         :subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EFBPMq45n6JjfKlOhrOzrUEV/+TrTTvEa94T81uKZ+8=;
        b=hR5PQbIm8bwh6KX3Oph3U6z8h3L/AEYXs1nj8Hr7/ZcfCbTYBA5DjBlsbGeojlHYWp
         3pUZx4waqT0W7ymYespkp97bhz9+bvyxHRHvQ9UQth8s6Ks/HGF/gaAiE4g8RYMR2hY9
         H0l7kZCg5NkDC0+TdL/xOhzzHSDF1VjL6ZS82BE6OG5g36dPYnW/j41MNtTXQhaXDMlP
         O4es/eGXVC6TOyawxYbemzb8ri0NvuzH5r1lMx5+vn7TC8gQIhL5D1vQwq3k/AeJtIGI
         Iluz/9FaZmsV81q7Y0piddoJMCk6jaf1XX3qO/vUuNF7AN/I3pppeujZ2OV3xP31Umf2
         3qIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1I5f84q3MVE9yUthOo+taKaR1Szi/iPhyo2NGDIhvUbcUvVDUT
	lpDHNjRv4gNIJoZ0/lluWRc=
X-Google-Smtp-Source: ADFU+vuUXYxNkT/dlNuW7usKTIlZXkaJUpMks49v8djAWL6RpJ0PeQmqc4h4UfcfHi8AhJr4gyCTEw==
X-Received: by 2002:a63:f44d:: with SMTP id p13mr23323357pgk.113.1585745627774;
        Wed, 01 Apr 2020 05:53:47 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:16d5:: with SMTP id 204ls15483672pfw.3.gmail; Wed, 01
 Apr 2020 05:53:47 -0700 (PDT)
X-Received: by 2002:a63:a35c:: with SMTP id v28mr23480530pgn.251.1585745627405;
        Wed, 01 Apr 2020 05:53:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585745627; cv=none;
        d=google.com; s=arc-20160816;
        b=WU9fweOYluuPvCcdZSqkRME/Tf1CU649pc5MAE4ngXWQPm3Bzggb6R7ReojeRlfo1s
         FnDVvUxpPXxIEXcTWGimj0MeFbo9OGYau8i+BroErut0b7OJoBoOw1qM/ckY4/iGtWf1
         vqvl5OyrrNegl0N3e4d5lxvPpig2blGm+P+d+ZwfF8fnnrChgBaxTqVktk/W4Fl+5Vos
         eZ/XwNtpcUyQbLXvUGpv5nDHPt4dZ4Yo9EM34H7M855YDx9VFVqyyxgCzKvBFpJFCf2Q
         +WnT1dxz1ElDWtEzOFq/AmqT4vQ6TTC08d9651ZkdoSILvWA6Uk4TGuc4fwp2DgdWUGu
         hGIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:cc:from:to:in-reply-to;
        bh=O400OgTulZhEce75E1DDFuoKlkwXu4XZGbZOpt0qcco=;
        b=0oFHHuABqy/IH9EUImt4fB+f/6R1dDOY081/kqXQm5+Vviqxue4d9F6aUVS4GK2GSX
         KfHTFi47/F6ZokWP0vz4aWPcKVjkm2rPODQABWyjVIPMwewt44JdyG3tXwUe9Kee1HQ8
         9JFjlFZWMcVO3eYMtTapUZATtdjSzklj6OYFzrB5KP8SAS/NVax5hWlPCI993sct7eqB
         a7+/8WSSFsZNWuUijLn8qU2pWshWd7DfAW9fiYLySmUKbt7J6c1QEFOcd0oai5a4mbrE
         YNr479uDSSVEWbEnPwHibcf3f2LxwiEZqylzfytw/YbyYB/D+DOKcvVy5qQ9lRFKgzT1
         OzKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id j44si403509pje.0.2020.04.01.05.53.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 05:53:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 48smN34DHnz9sTd; Wed,  1 Apr 2020 23:53:38 +1100 (AEDT)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: c17eb4dca5a353a9dbbb8ad6934fe57af7165e91
In-Reply-To: <20200330080400.124803-1-courbet@google.com>
To: Clement Courbet <courbet@google.com>,
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>, Clement Courbet <courbet@google.com>, Nathan Chancellor <natechancellor@gmail.com>, linuxppc-dev@lists.ozlabs.org, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v3] powerpc: Make setjmp/longjmp signature standard
Message-Id: <48smN34DHnz9sTd@ozlabs.org>
Date: Wed,  1 Apr 2020 23:53:38 +1100 (AEDT)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ozlabs.org
Content-Type: text/plain; charset="UTF-8"
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

On Mon, 2020-03-30 at 08:03:56 UTC, Clement Courbet wrote:
> Declaring setjmp()/longjmp() as taking longs makes the signature
> non-standard, and makes clang complain. In the past, this has been
> worked around by adding -ffreestanding to the compile flags.
> 
> The implementation looks like it only ever propagates the value
> (in longjmp) or sets it to 1 (in setjmp), and we only call longjmp
> with integer parameters.
> 
> This allows removing -ffreestanding from the compilation flags.
> 
> Context:
> https://lore.kernel.org/patchwork/patch/1214060
> https://lore.kernel.org/patchwork/patch/1216174
> 
> Signed-off-by: Clement Courbet <courbet@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Cc: stable@vger.kernel.org # v4.14+
> Fixes: c9029ef9c957 ("powerpc: Avoid clang warnings around setjmp and longjmp")

Applied to powerpc next, thanks.

https://git.kernel.org/powerpc/c/c17eb4dca5a353a9dbbb8ad6934fe57af7165e91

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/48smN34DHnz9sTd%40ozlabs.org.
