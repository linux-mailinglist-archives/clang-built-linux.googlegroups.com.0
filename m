Return-Path: <clang-built-linux+bncBCWPNP5RT4JRBH4E3XVQKGQE5ZLEH2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A2706AE3AD
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 08:26:39 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id m6sf871454wmf.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 23:26:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568096799; cv=pass;
        d=google.com; s=arc-20160816;
        b=diw7Wo00Lawhdp5b3n9z00mlFaCt3UxeVZQX/vIJCeAcaaTzBvP4nE5fnf3wkYctfF
         dBgDDiOdlxpq/+fhE/kiSMQKVJzhY2pF4TFXVJQTeApArKemMEIeHUxux6FlRx9qLtCx
         lkwsts2xmZeblM9Wr/xrSTAHxaPCJ+975gMQj32LiszzrdGwbn1zHxk63RprwNTL7w5U
         +LdtHeLw1P2+K1nG9KRSako0N21GtuHdigk81BLicJRxM1w51ic47PQ2f1AcMpMmjgs5
         7pnak6VGlfnrTe/CmreOu7zb2MVDNHAkpy+fXiO11mbxh4KsgocfPPVun4Ahl5o90Oxy
         SOug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=9KYTZ5f1OtY6wNXKNaVeYAiTWvfQCY91d7Z8aqu+YMo=;
        b=jxiupTv8WhNmpJO5A3uWRnas96IzvkxIM4UbQSKZIHj9SIYC1v17TTGAXkt+a3/2Vt
         gzuIZlcfJFpu/oH1jQHW0A3QnyaeqBgzHN9MmSBMZcDVJpKe4ZXPab7Rho/me62acsvN
         6bJslVR9ltY4LLnDBeB8H2xxe3n6wXtgSycNVh/TsmR6rM2U4V7rkI+Gos/VddVLmRPj
         3Glt3Yd8kJdwlcQlHTyb+ir83FuDMQcQxi1niMgTXOqiuHdzdui3i978T8Xo/nsGdakj
         AaKgHxcAffUJg4vobyZJOxvPNSovpC0OYy5oN0ro/9KRyNoi3FjYHr20dVanw+zRIbac
         3Ylg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LCtFLMn5;
       spf=pass (google.com: domain of lucien.xin@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lucien.xin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9KYTZ5f1OtY6wNXKNaVeYAiTWvfQCY91d7Z8aqu+YMo=;
        b=TM0mVg4K4EfUvtSxwBPJb5cYsC2qNUc2RTYfnbk5WjK1poivMBOk4pBI2aC8YQk2gW
         ntnoGx+YRQdPWw6+bXI/aake4TbTf177ZCQjhIzZ58d5Og/Sxtl2Y6xrUm+/vmDs8G89
         5o3CKHY35iEvEF/DbCmzddx3KPkgZh5rhD35XYA7AO9aA4xDPeu+/E86WUNULAQOpte0
         MLcMGHf8cTMWGkHJI/uWWAJSRkYmJaTAlNzL7uuQFw3ClJQ/WdBapP/rse1u4LhHjt8W
         OfwgtSvsFeNGahofjpC5LpjOhHbg0q58yra0xkXVP21n0/PmPzngqzeqk2eC406Dic5I
         H3tQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9KYTZ5f1OtY6wNXKNaVeYAiTWvfQCY91d7Z8aqu+YMo=;
        b=r6OPWia3TLtt+UyPiZAtn7vBehrN/eSu+ZXhZMVvJduSFxaq47Aiu2NNWVUGVPQpw9
         +FB0/wiir+yzGXZYiSX7J6AhyN3hAZn5AHFA7E6Tkiqmwlljhn/2XyBOD6OoA2l+DDQd
         KLIPyGKf57Nvk4Rbrt9DPAFPuyXZ90RwRieVTwiXtebBoH3sVFNLkwrMkwYaqA5egvgd
         JjJsmq+gWsvXWkl0p1nQ546QDnOTqsD8aZ3hVywB2DnCZ8OLGzwtVrQ5TDqAtmdiVVeK
         cCVoTaQiBpUrIzRk0NqgrQhqJcVL0NK/F1X/DzyoSUcEhAN4OH4K/V6z5EZLDnvL8o8m
         Pkwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9KYTZ5f1OtY6wNXKNaVeYAiTWvfQCY91d7Z8aqu+YMo=;
        b=Too5yYAeA9fYrK2fqWWLol7PA5j8MCMUcAqNZoD1ul5NqPmGEAp0Fhx4P3VT4jGBF8
         78iG9cUFBgeXXm2uPtf1BkITh1rg9VTQgwEALz3LWJKrMWpDjsGNAKfuuOK14N7ySmo4
         D9SGcrgBFbMytLr//9i0DiZ8RetjmiaakFlD5KUuxLPc33lpW7ux8FtDWckFGzm1mupw
         iTGeyhUDv47w0ILVUGihEgSgltV36V992amGchwUWlSng3bTBYnRnY80E7hxbDSrDVME
         5XOecHn2HRKWVQjuPyrxj8CidmY3bitZ8xwPGQG/TP8F/lufpwHw+wfhp38KmCLvbqRl
         F8Xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVDe1jjfdxORQfs9EqMV8KO7A2EQmoN9fi/LLwZ9tBqai/L1fvj
	n5DWzhE+KOBOpejQIcBA/2M=
X-Google-Smtp-Source: APXvYqy5n+xkmpV+OxJEGFAgzohse44MGsnr9SRM57Afk1dTEKBXmAqmt1i4uAqUEuLHfdSGzmPNDA==
X-Received: by 2002:a5d:4f08:: with SMTP id c8mr25703804wru.51.1568096799308;
        Mon, 09 Sep 2019 23:26:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5302:: with SMTP id e2ls4871953wrv.0.gmail; Mon, 09 Sep
 2019 23:26:38 -0700 (PDT)
X-Received: by 2002:adf:f3c8:: with SMTP id g8mr14806011wrp.58.1568096798794;
        Mon, 09 Sep 2019 23:26:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568096798; cv=none;
        d=google.com; s=arc-20160816;
        b=OMfhVIrNrL9D1X0VkH8YJu2gCbzWQy0W3RNfgZLjf0PntMUvAnX0CJgrFcnlfmptJW
         d919/Wb9OOtYYHJcJCPgXsdqG5MlAPOMhgo/tk6YCcEKLWkhDT7JR36mQdfHwajbVA8O
         pgiItPx3ifWR2kQe6JN/Zzmq2l7nN2ttQSk3vZzghwlqVWMr+OiX9/6EXpigbV5w0CA3
         mSw2YNCBuyFl7RWrQWvrEoPpFSsjz8GPGTOYyPmyeyHWv2Uq5pUJS5HdplgsxpEK1fjb
         F5dALkL87dOv99flkV0A5x/2qhAb5zxyK6drJ4pfnVRgx4iMDsCNZg45uHSZj45ERXsJ
         WaDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fvMyp24fNfOUnjJclwKWLt3KZ/Su+dOW9nHqfue/1vY=;
        b=cqd1Kfw6nliDKzkTXLGvdgAjb/LEynvA3moIfGVBC6LxJHQO3rcOO/r29Kf5WAQ+DY
         V5NJ9DvtOOoXN9LhMhD7jY1CoO70hMLVnfpUyXNA8m2G8y5rNFwgNUgAxziUxKTjdvzk
         Tm7kt/hI4lwmnmX6xhBUHxg1WFDhQWgYcBVq0hqwFuXtR3J94mxo6Ci7p4dis/FQnoKf
         +VhN8N7scgOJDfXcAmQQaprqxPfVxxQQ9/xIKegSyl/i+b4G0RDYHeh0UNGmbR0TW+QT
         lg622YQw5xjjFw6eBF6a96M95MTsJqSQBe7bg5RywFUVu3FeVmXpDpCa8GigiguKLMi5
         XC8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LCtFLMn5;
       spf=pass (google.com: domain of lucien.xin@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lucien.xin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id j4si781336wro.5.2019.09.09.23.26.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 23:26:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of lucien.xin@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id d17so4822166wrq.13
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 23:26:38 -0700 (PDT)
X-Received: by 2002:a5d:45c3:: with SMTP id b3mr24776880wrs.207.1568096798562;
 Mon, 09 Sep 2019 23:26:38 -0700 (PDT)
MIME-Version: 1.0
References: <201909091802.pU2vj2DA%lkp@intel.com> <20190910035421.GB1778@archlinux-threadripper>
In-Reply-To: <20190910035421.GB1778@archlinux-threadripper>
From: Xin Long <lucien.xin@gmail.com>
Date: Tue, 10 Sep 2019 14:26:27 +0800
Message-ID: <CADvbK_e0F49oNw=erZLCnkYLYP2fvYy92gih0nFpM19JoL=1tQ@mail.gmail.com>
Subject: Re: [PATCH net-next 2/5] sctp: add pf_expose per netns and sock and asoc
To: Nathan Chancellor <natechancellor@gmail.com>, linux-sctp@vger.kernel.org, 
	network dev <netdev@vger.kernel.org>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lucien.xin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LCtFLMn5;       spf=pass
 (google.com: domain of lucien.xin@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=lucien.xin@gmail.com;       dmarc=pass
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

On Tue, Sep 10, 2019 at 11:54 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi Xin,
>
> The 0day team has been doing clang builds for us and this warning popped
> up. Let me know if you have any questions.
>
> On Mon, Sep 09, 2019 at 06:44:47PM +0800, kbuild test robot wrote:
> > CC: kbuild-all@01.org
> > In-Reply-To: <00fb06e74d8eedeb033dad83de18380bf6261231.1568015756.git.lucien.xin@gmail.com>
> > References: <00fb06e74d8eedeb033dad83de18380bf6261231.1568015756.git.lucien.xin@gmail.com>
> > TO: Xin Long <lucien.xin@gmail.com>
> > CC: network dev <netdev@vger.kernel.org>, linux-sctp@vger.kernel.org
> > CC: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Neil Horman <nhorman@tuxdriver.com>, davem@davemloft.net
> >
> > Hi Xin,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on net-next/master]
> >
> > url:    https://github.com/0day-ci/linux/commits/Xin-Long/sctp-update-from-rfc7829/20190909-160115
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> net/sctp/associola.c:799:24: warning: use of logical '&&' with constant operand [-Wconstant-logical-operand]
> >                    if (transport->state && SCTP_UNCONFIRMED &&
> >                                         ^  ~~~~~~~~~~~~~~~~
> >    net/sctp/associola.c:799:24: note: use '&' for a bitwise operation
> >                    if (transport->state && SCTP_UNCONFIRMED &&
> >                                         ^~
> >                                         &
> >    net/sctp/associola.c:799:24: note: remove constant to silence this warning
> >                    if (transport->state && SCTP_UNCONFIRMED &&
> >                                        ~^~~~~~~~~~~~~~~~~~~
> >    1 warning generated.
> >
> > vim +799 net/sctp/associola.c
> >
> >    775
> >    776        /* Engage in transport control operations.
> >    777         * Mark the transport up or down and send a notification to the user.
> >    778         * Select and update the new active and retran paths.
> >    779         */
> >    780        void sctp_assoc_control_transport(struct sctp_association *asoc,
> >    781                                          struct sctp_transport *transport,
> >    782                                          enum sctp_transport_cmd command,
> >    783                                          sctp_sn_error_t error)
> >    784        {
> >    785                struct sctp_ulpevent *event;
> >    786                struct sockaddr_storage addr;
> >    787                int spc_state = 0;
> >    788                bool ulp_notify = true;
> >    789
> >    790                /* Record the transition on the transport.  */
> >    791                switch (command) {
> >    792                case SCTP_TRANSPORT_UP:
> >    793                        /* If we are moving from UNCONFIRMED state due
> >    794                         * to heartbeat success, report the SCTP_ADDR_CONFIRMED
> >    795                         * state to the user, otherwise report SCTP_ADDR_AVAILABLE.
> >    796                         */
> >    797                        if (transport->state == SCTP_PF && !asoc->pf_expose)
> >    798                                ulp_notify = false;
> >  > 799                        if (transport->state && SCTP_UNCONFIRMED &&
>
> I assume this && should either be a '&' or '=='?
Right, it should have been "==". It was changed unintentionally
when I swapped the position of 'state' and 'SCTP_UNCONFIRMED'.

Thanks, will post v2 after others' review.

>
> >    800                            SCTP_HEARTBEAT_SUCCESS == error)
> >    801                                spc_state = SCTP_ADDR_CONFIRMED;
> >    802                        else
> >    803                                spc_state = SCTP_ADDR_AVAILABLE;
> >    804                        transport->state = SCTP_ACTIVE;
> >    805                        break;
> >    806
> >    807                case SCTP_TRANSPORT_DOWN:
> >    808                        /* If the transport was never confirmed, do not transition it
> >    809                         * to inactive state.  Also, release the cached route since
> >    810                         * there may be a better route next time.
> >    811                         */
> >    812                        if (transport->state != SCTP_UNCONFIRMED) {
> >    813                                transport->state = SCTP_INACTIVE;
> >    814                                spc_state = SCTP_ADDR_UNREACHABLE;
> >    815                        } else {
> >    816                                sctp_transport_dst_release(transport);
> >    817                                ulp_notify = false;
> >    818                        }
> >    819                        break;
> >    820
> >    821                case SCTP_TRANSPORT_PF:
> >    822                        transport->state = SCTP_PF;
> >    823                        if (!asoc->pf_expose)
> >    824                                ulp_notify = false;
> >    825                        else
> >    826                                spc_state = SCTP_ADDR_POTENTIALLY_FAILED;
> >    827                        break;
> >    828
> >    829                default:
> >    830                        return;
> >    831                }
> >    832
> >    833                /* Generate and send a SCTP_PEER_ADDR_CHANGE notification
> >    834                 * to the user.
> >    835                 */
> >    836                if (ulp_notify) {
> >    837                        memset(&addr, 0, sizeof(struct sockaddr_storage));
> >    838                        memcpy(&addr, &transport->ipaddr,
> >    839                               transport->af_specific->sockaddr_len);
> >    840
> >    841                        event = sctp_ulpevent_make_peer_addr_change(asoc, &addr,
> >    842                                                0, spc_state, error, GFP_ATOMIC);
> >    843                        if (event)
> >    844                                asoc->stream.si->enqueue_event(&asoc->ulpq, event);
> >    845                }
> >    846
> >    847                /* Select new active and retran paths. */
> >    848                sctp_select_active_and_retran_path(asoc);
> >    849        }
> >    850
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADvbK_e0F49oNw%3DerZLCnkYLYP2fvYy92gih0nFpM19JoL%3D1tQ%40mail.gmail.com.
