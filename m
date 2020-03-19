Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXE6Z3ZQKGQEEGYLROY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id A64A718BB14
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 16:27:26 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id y19sf642484qto.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 08:27:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584631645; cv=pass;
        d=google.com; s=arc-20160816;
        b=TpZCwI95pH2J5xlUYAPNeke3XibaW66FgNuZkRulVDVzXtk4MDc+PWkkN1mCxGNVf0
         X2zUeMlxkoGqyecYWuFHBhrcVry23QHF96sbgPr2jviOJ1iu7xDOGKke/pn9oguiHZRc
         ibbshbe/JuHjFH+odH79B3EPBmqI0jinc7KOo3+fcXZblVhej3WYaTZfxOvWDbWEpLWa
         981V4hQ+W2YT0YhXtwSXc2AqlLOyb8/2Xfaiu82WzmRX1esr9Y9AlMoQKoKcBDZP+/mt
         B3L7iB+PrstjVwsxLLU/Os5ih49v28uokqRv7L7F+LHFVSINbEtmXeAudfFPJACkxtes
         CwRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KDComLjm/0tt87MtCI4DYuycL4dg71tyeTiZNcC3HFY=;
        b=AqBv6tESJJWI8tVW6q9dS1J1iU8MYc06btZXWLdfsTRU9XqmPryiG12YHbdCEP+4y+
         6HKfr/F3DzFVfVbNZLw4SWj1on/OKuivJ8+Ci85GzVidU8LpMRhwvZdoMUBeQLSNsQ1T
         liN+UEEL5bgZns/53XEn3sDrmCWg4JAE9bSsbLmMrjaxsouT2CpwDCYJ3oVytoGyAycD
         Umxg/P+xtg0ut275vB3fjvZyzfhziUJW7J8hxwzTXwpbmt9ozDDMsEZaCn1TULnZTzuZ
         D1Chx0statMlBAnJILf9h0C6gYWbtNsVINK/8riMcwj1NqPT6BvAcQx0p2pShvtpDFv+
         y4cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uJ74WSzB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KDComLjm/0tt87MtCI4DYuycL4dg71tyeTiZNcC3HFY=;
        b=FRxOPPIENwf+x8/Sc/5rcQLbIb4PkJp6GYwUTzx+mFT0osoAfVwqFgwU2zBcP1cDCj
         lkNxllrvbMjY+WvEn41tfqxq2zyJdkeP9K7rTpLPY5OiZMO9DxotiBMEtdULbIBPDRZA
         8LMyRgsA/2mQz1hYHopsr63oOJ0vvBbxBUN2SnFxAKRQ1rYRvIVH3b8tZQ3ji/QTM+UC
         EiUd8c8srCzwjjROUV3MqRzYwXH91qRPikc3gYwpL2V2aiMmsxY/CaW13GUmzmhzV29A
         vMKBBTJW53XZlw9KQNGr940N+GhaR/tpHsyvBw9kjJfzHLAcvX+PbBSy7PnjqlV8lcox
         77Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KDComLjm/0tt87MtCI4DYuycL4dg71tyeTiZNcC3HFY=;
        b=EDmQmaIVnkPAxN2Xvyko73dUOtsdp9mhWMGECSXolr//gHdTVs0s3tgwz2EyNPVjqm
         30yb6Zc/+K0MpW9+h7kCMjZnwfrbd9R7atassTse51PdlY7bKGgiwhpCuSDizuWMv5ry
         tOxHeJmSObwETM9U2tPcMZDRUiW3iINly3wSM9AegRbcjl3VO0DrSZVl4CoEJ6ZsOI4q
         7a1FWWBd+hTVe0+/9LCnn0AaBYksUX1NYpDh1TE1JUyhkZsDt+Kp2rJZf3e98c+Q6Efu
         wK5gJAiMvx/x4yCb+qCQ4hQdo+CQOo+pO+kPhWvH7wlEpF7+rG0CaDqB3qLfSTjOWB6M
         hUfA==
X-Gm-Message-State: ANhLgQ0QMcvFAEw4dr2PKPeKdXGo97fvHQERccz4nXC0mKZ6m4jmWYaF
	AM6/Q5LU8LJ65GOCtgOe2QI=
X-Google-Smtp-Source: ADFU+vtG+PN06DBaSY2obm9wvEmR6u9Rh6RYNODGN0EwX90pzxd4WWD8mG61kMTxBy+2TZfY4Ce/Ig==
X-Received: by 2002:ae9:e014:: with SMTP id m20mr3577662qkk.434.1584631644948;
        Thu, 19 Mar 2020 08:27:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1971:: with SMTP id g46ls1233263qtk.7.gmail; Thu, 19 Mar
 2020 08:27:24 -0700 (PDT)
X-Received: by 2002:ac8:7257:: with SMTP id l23mr3485124qtp.197.1584631644251;
        Thu, 19 Mar 2020 08:27:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584631644; cv=none;
        d=google.com; s=arc-20160816;
        b=oVvEanmWkzK3n7Ivoym7AbCCXu9zV2kqpUjPINjtjLJWeljaSOKkOLmP2+xK0ReZb4
         JSBjTCLMAPH0amIKdh6E9xiUPoiE8fydQ6ig5bM4SS5tu48DdEepSQQwStxSHoYhc0Iq
         sXFKd8qsIQs5VM2YZwOtK+z+frfjzamH1q9rzDhQL6pvw0Gp5Ttn2US8A/3YbT4d0rgW
         3UV1Dr8S3roYQjo0q1Ql3fPFGS7G1bGOCm21L+qMwCa8Mvv5HzemUTnMH/BeHuF4q5Uy
         hxver28ido2THigV64b5qW56CL63eC+E36FR/DFiPZE/E4I8zBl2zNniaPBMZCyotyEO
         AT0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1rmuAByMN5h8vYPNws3LwAYmJtd2p8b+p+Th3wk2m6Q=;
        b=h+ZQf2ISLeahiM0skcj6yvyYxxbqbmihG5O1P3tYlq3K84BFJ/NXkht3ONTDloMRk1
         hFo29oLKNMr5GTmSipO6odsMaQzPxdpnORlxdaBsIJa7kfmDGIRz5mjHSZqmz9sf8Vq7
         g7VtjeaLkfMeIuHetl1ogd/2qGzSuPxqmLPhsknGtdGrUx04I9ISckW+zLKaocRpQTWj
         JpRvJu2OCvl7n6LZzQua3NPj/MjRbuSFj8htGzYelxEd8B8poA+1AetHGdswCiJTMXd0
         4Wv4uqDHg36aEc/EuSAXSIGOV5mVhYZV2XPlPPZ1nPk1AESFkeqOrtI2aVmW4AEYwIQx
         BHuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uJ74WSzB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d193si137963qke.1.2020.03.19.08.27.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 08:27:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 37so1438516pgm.11
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 08:27:24 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr3980997pgb.263.1584631642900;
 Thu, 19 Mar 2020 08:27:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200220051011.26113-1-natechancellor@gmail.com>
 <20200319020004.GB8292@ubuntu-m2-xlarge-x86> <20200319103312.070b4246@gandalf.local.home>
In-Reply-To: <20200319103312.070b4246@gandalf.local.home>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Mar 2020 08:27:11 -0700
Message-ID: <CAKwvOdm9notnmKYQqAsTsZN7qqEpNtpQ091wv=rWZ0kzS3OzAA@mail.gmail.com>
Subject: Re: [PATCH v2] tracing: Use address-of operator on section symbols
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Ingo Molnar <mingo@redhat.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uJ74WSzB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Thu, Mar 19, 2020 at 7:33 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Wed, 18 Mar 2020 19:00:04 -0700
> Nathan Chancellor <natechancellor@gmail.com> wrote:
>
> > Gentle ping for review/acceptance.
>
> Hmm, my local patchwork had this patch rejected. I'll go and apply it, run

Local patchwork? As in patchwork.kernel.org?  (Is there a client, or
can you host your own instance?)

> some tests and see if it works. Perhaps I meant to reject v1 and
> accidentally rejected v2 :-/
>
> Thanks for the ping!
>
> -- Steve



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm9notnmKYQqAsTsZN7qqEpNtpQ091wv%3DrWZ0kzS3OzAA%40mail.gmail.com.
