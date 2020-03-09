Return-Path: <clang-built-linux+bncBDV37XP3XYDRBBHLTDZQKGQEPGTFXOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FA917E021
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 13:24:36 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id y35sf7856643ede.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 05:24:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583756676; cv=pass;
        d=google.com; s=arc-20160816;
        b=cY8WpUuPGF+AAjsnq8oOKSTJNde9Pv+ghARsElptvd2zDDIdkmlvWuCzKJKyNfmOCj
         0XCJoC+xyBh6fya8p27QC+/xXZiE+TO2IOt5UVQfI7H13U6BvHp7w/3w4W85bIme2/7b
         t94OkTsf825fSGlmHxn9gvXw0/yT3fmXjlYlo/gFmeCaChOzHVAh0WyHw6rSRRev5v+i
         A/vJ0acwn9vtLonxKZcTykEG4DogTd1d4Mh93QoRQRV7rY/GqYiYW5tg/vBnso9qAnlW
         bhSjMgx4Z614fsVU4pnfnHj1YfGzZjey3ArpMW7CJTsTEJQJ7VKJ7m+aOclcdilaAKVS
         Bl8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=/7PRfEzbMBaETM8u716OGKioq7t0rR+AEvvHewdOPQQ=;
        b=GyWUizkueBR7Tq4rjoCTjtyvQ9gxU6G9aqfEcByZz+ViVm86B7hhDvHbGyzGhR0pSp
         bPFFjXUgzfY/GgWOOUYIeM/3ClqZrd/V7bXJmS3d9bbK3zmf5aAS1VbAs/UkVpRm+Aru
         om0ZozBA2ndNIUKppm+7umoYGRFExEN9dm85reKCwGjhgyioSppIvZMbaSn7dtHslrIr
         zlPzCq64V7SpcC8plgbMk/CsVX3eQTdvq/eLOLN3fVfjnp7o3XIP0nBRQYjKviBdF56R
         9vsmYUzKgQvlsJMaVjJQ2sy4fgVmLoHcbcYuISjqudJSWpZnO7W7NYd+RAf+nN7a6fnF
         FyQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/7PRfEzbMBaETM8u716OGKioq7t0rR+AEvvHewdOPQQ=;
        b=Z1DmYScI08N1qneRm0XytlaXPNEV4y2VFL38VDf4Jt4BIdD1JOjoMNT9E3rWgzETcJ
         OvR7aKV9zXErrRArwPPEPQJWM6NkGrRUCFt+5hb3N58bul6h81hk4Z/IkDN1cRXJmkYs
         i+MphPsPclJ3/lS4nXPluuBo8a+HIDakBq6gFL+V4oNa4JvyMwAw7n7hj0C6AqGxxeIs
         DQsCAum9dOCfLhOBP4qnvAflJiiAU6fJLsXeBvuEkRMG5tTY48BlWAiAl1FbNHUHSsfu
         LoMrhUi/9DKUY7KgyE6CUzxHSDzjwqht9chCzJfiohzBoBbDAO9+Wz8055JSroCs7wJW
         s2gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/7PRfEzbMBaETM8u716OGKioq7t0rR+AEvvHewdOPQQ=;
        b=Ms0/Ea9yuR0Nr5xAPCJAOavuBv7VN0UtJ5Ku3NykfmX4t9gOJMC3U/yC/Gutn9CYYC
         lMVg0XChLp7uqi4BmrC3p8fzprnkWz5b3xGZ7fpg/yiPSqMNxS5P/DkeSE4LtzcjmYt7
         f1hTSgQT6KFIp/kITckPAfnKYn9Q7jOhEnfZRHvvJ1WZwUq2S5JV/YaTXS2xQr02cO/F
         K9+iHRMnBNoUB81Ux1fCB5JpHcxvZFNjLJH7gg8qK4IizbaINWQJAsMybvb+ZD4DJBMS
         0y4xCS8gJajFYFTh1gmSoS+9RZCvdZBOkPKKiGeUST4GTkumDC05lhALJjD4IEmBzp4I
         8mtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1Ywy4kUW3Uga1ubyXv5WmnqRwXYAKx+Bc/xMbwQh67izqKuAjc
	C8s0czzHMZvSdLlDgAHACiU=
X-Google-Smtp-Source: ADFU+vsYRk992uRo7LqLjvbZq9Mvv3J0Bl2GO+IBjDeEwojSLI0LXoAAwZcc+G29ufemke8jTq4FQw==
X-Received: by 2002:a50:ff09:: with SMTP id a9mr16357576edu.157.1583756676422;
        Mon, 09 Mar 2020 05:24:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d4d7:: with SMTP id t23ls7245299edr.9.gmail; Mon, 09 Mar
 2020 05:24:35 -0700 (PDT)
X-Received: by 2002:a05:6402:17c9:: with SMTP id s9mr17168887edy.257.1583756675782;
        Mon, 09 Mar 2020 05:24:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583756675; cv=none;
        d=google.com; s=arc-20160816;
        b=jCDvx0pByILAxZAzUAI9WigUO+2Oe5bo65bgf30262guyUZgecbCB3ZvY6E47OzdOw
         7NWjP7TAVblPYE/YqNdKbeT+Ob9Tyd0zrT9ryWSX4P1fe/eL8XwiS0iuBwj8MpG3S6R1
         T29NBF10v3ZHhIPKvx+f+mciTpRNe0Y5EnF/rpDl1HyeYr25SxZAyTP0PI+Fjb0skVUV
         pK+o/2TbVFloGdFzlKcg5XT3Fu3VODr74MOwUJ5jpzVHQQMVH3tECGfsLSLE3R/MfBUp
         P/Xv3p50vshcetisRd3FSUrlrEkyf1JGLiWJwAouNy+lqaFUKbGOwQscrpI1QJvp3Gbn
         +mYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=0aM9uzRq+01hixcLuSa6z4bNpCxhJERMtfRElEDhYGo=;
        b=0KyeZuCxtoRpQGktTAMCmIibEmxuzOc6wLTP5gvlZzXadjj20er/diopmhqzEVeWEM
         7tyGtt7Rcyw51eus27Ecln2bv7wy0cpza5aoUWEB1/ZRjvmLUP13VJYoEw78cnsgi3Fl
         WaaAvUS0XHJKavroMTJD5MUAIaGOr21oCZ6llVZE5zA+PeDkTi27HEAKV3L0iU8galgW
         eTjH6Ivy/NijLukaY7wkGE5X/zntMmNa6kr8APQA/rEH+XQjnUEz9cIOac5cuaUosrAF
         n0dyDjliJ5aQXXHWtZAGC6LwYwtE3fPdbFJDRL/2qAXPm5obQW9/tyamJ6J0cEwa2+ig
         E0aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l35si402589ede.3.2020.03.09.05.24.35
        for <clang-built-linux@googlegroups.com>;
        Mon, 09 Mar 2020 05:24:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F1B7F30E;
	Mon,  9 Mar 2020 05:24:34 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 20D953F6CF;
	Mon,  9 Mar 2020 05:24:32 -0700 (PDT)
Date: Mon, 9 Mar 2020 12:24:30 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Andy Lutomirski <luto@amacapital.net>, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2 00/20] Introduce common headers
Message-ID: <20200309122429.GB26309@lakrids.cambridge.arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
 <3278D604-28F1-47A1-BAB8-D8EB439995E8@amacapital.net>
 <b18c7ce1-0948-a9e2-2d7e-d019669a71e1@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <b18c7ce1-0948-a9e2-2d7e-d019669a71e1@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Mon, Mar 09, 2020 at 11:07:08AM +0000, Vincenzo Frascino wrote:
> Hi Andy,
>=20
> On 3/6/20 4:04 PM, Andy Lutomirski wrote:
>=20
> [...]
>=20
> >>
> >> To solve the problem, I decided to use the approach below:
> >>  * Extract from include/linux/ the vDSO required kernel interface
> >>    and place it in include/common/
> >=20
> > I really like the approach, but I=E2=80=99m wondering if =E2=80=9Ccommo=
n=E2=80=9D is the
> > right name. This directory is headers that aren=E2=80=99t stable ABI li=
ke
> > uapi but are shared between the kernel and the vDSO. Regular user
> > code should *not* include these, right?
> >=20
> > Would =E2=80=9Cvdso=E2=80=9D or perhaps =E2=80=9Cprivate-abi=E2=80=9D b=
e clearer?
>=20
> Thanks! These headers are definitely not "uapi" like and they are meant t=
o
> evolve in future like any other kernel header. We have just to make sure =
that
> the evolution does not break what we are trying to achieve with this seri=
es.

Given we already include uapi/* headers in kernel code, I think placing
these in a vdso/* namespace would be fine. I think that more clearly
expresses the constraints on the headers than private-abi/* would.

Thanks,
Mark.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200309122429.GB26309%40lakrids.cambridge.arm.com.
